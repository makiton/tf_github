terraform {
  cloud {
    organization = "makiton"

    workspaces {
      name = "tf_github"
    }
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.31.0"
    }
  }
}

variable "token" {
}

provider "github" {
  owner = "makiton"
  token = var.token # or `GITHUB_TOKEN`
}
