locals {
  repositories = {
    template-nextjs = {
      description        = "my next.js template"
      gitignore_template = "Node"
      is_template        = true
      homepage_url       = "template-nextjs-seven.vercel.app"
    }
    renovate-config = {
      description = "my preset renovate config"
    }
    template-rails = {
      description        = "my Rails template"
      gitignore_template = "Ruby"
      is_template        = true
    }
    tf_github = {
      description        = "my github repositories"
      gitignore_template = "Terraform"

    }
    paiza = {
      description        = "my answers for paiza problems"
      gitignore_template = "Python"
      private            = true
    }
    atcoder = {
      description        = "my answers for atcoder problems"
      gitignore_template = "Python"
    }
    setup = {
      description = "setup scripts for my PCs"
    }
  }
}

resource "github_repository" "repositories" {
  for_each    = local.repositories
  name        = each.key
  description = each.value.description

  visibility = lookup(each.value, "private", false) ? "private" : "public"

  is_template = lookup(each.value, "is_template", false)

  homepage_url = lookup(each.value, "homepage_url", "")

  allow_squash_merge     = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true

  auto_init          = true
  gitignore_template = lookup(each.value, "gitignore_template", "")

  vulnerability_alerts = true
}
