resource "github_branch_default" "default" {
  repository = github_repository.repository.name
  branch     = "main"
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.repository.node_id

  pattern = "main"

  required_status_checks {
    strict   = true
    contexts = var.status_checks
  }

  require_signed_commits = false
}
