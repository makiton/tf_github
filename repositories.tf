resource "github_repository" "tf_github" {
  name        = "tf_github"
  description = "my github repositories"

  allow_squash_merge     = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true

  auto_init          = true
  gitignore_template = "Terraform"

  vulnerability_alerts = true
}
