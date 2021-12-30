resource "github_repository" "repository" {
  name        = var.repository_name
  description = var.description

  visibility = var.private ? "private" : "public"

  is_template = var.is_template

  homepage_url = var.homepage_url

  allow_squash_merge     = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true

  auto_init          = true
  gitignore_template = var.gitignore_template

  vulnerability_alerts = true
}
