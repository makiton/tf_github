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

resource "github_repository" "paiza" {
  name        = "paiza"
  description = "my answers for paiza problems"

  allow_squash_merge     = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true

  auto_init          = true
  gitignore_template = "Python"

  vulnerability_alerts = true
}

resource "github_repository" "atcoder" {
  name        = "atcoder"
  description = "my answers for atcoder problems"

  allow_squash_merge     = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true

  auto_init          = true
  gitignore_template = "Python"

  vulnerability_alerts = true
}

resource "github_repository" "setup" {
  name        = "setup"
  description = "setup scripts for my PCs"

  allow_squash_merge     = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true

  auto_init          = true

  vulnerability_alerts = true
}