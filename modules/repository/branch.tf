resource "github_branch_default" "default" {
  repository = github_repository.repository.name
  branch     = "main"
}

resource "github_branch_protection" "protected_branches" {
  repository_id = github_repository.repository.node_id

  for_each = var.protected_branches
  pattern  = each.key

  required_status_checks {
    strict   = true
    contexts = var.status_checks
  }

  require_signed_commits = false
}
