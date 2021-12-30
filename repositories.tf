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

  visibility = "private"

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

  auto_init = true

  vulnerability_alerts = true
}

locals {
  repositories = {
    "template-nextjs" : {
      "description" : "my next.js template"
      "gitignore_template" : "Node"
      "is_template" : true
      "homepage_url" : "template-nextjs-seven.vercel.app"
    }
    "renovate-config" : {
      "description" : "my preset renovate config"
    }
    "template-rails" : {
      "description" : "my Rails template"
      "gitignore_template" : "Ruby"
      "is_template" : true
    }
  }
}

resource "github_repository" "repositories" {
  for_each    = local.repositories
  name        = each.key
  description = each.value.description

  is_template = lookup(each.value, "is_template", false)

  homepage_url = lookup(each.value, "homepage_url", "")

  allow_squash_merge     = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true

  auto_init          = true
  gitignore_template = lookup(each.value, "gitignore_template", "")

  vulnerability_alerts = true
}
