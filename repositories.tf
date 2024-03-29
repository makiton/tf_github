locals {
  repositories = {
    template-nextjs = {
      description        = "my next.js template"
      gitignore_template = "Node"
      is_template        = true
      homepage_url       = "template-nextjs-seven.vercel.app"
      status_checks      = ["Vercel", "Check format, lint, build, and test"]
    }
    renovate-config = {
      description = "my preset renovate config"
    }
    template-rails = {
      description        = "my Rails template"
      gitignore_template = "Ruby"
      is_template        = true
      status_checks      = ["test (2.7)", "test (3.0)"]
    }
    tf_github = {
      description        = "my github repositories"
      gitignore_template = "Terraform"
      status_checks      = ["Terraform Cloud/makiton/tf_github"]
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
    makiton = {
      description = "github profile page"
    }
  }
}

module "repository" {
  source = "./modules/repository"

  for_each = local.repositories

  repository_name = each.key
  description     = each.value.description

  private     = lookup(each.value, "private", false)
  is_template = lookup(each.value, "is_template", false)

  homepage_url       = lookup(each.value, "homepage_url", null)
  gitignore_template = lookup(each.value, "gitignore_template", "")

  # protecting branches for private repos is premium feature in github
  protected_branches = lookup(each.value, "private", false) ? {} : { main = {} }

  status_checks = lookup(each.value, "status_checks", [])
}
