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
      version = "6.3.1"
    }
  }
}

variable "token" {
}

provider "github" {
  owner = "makiton"
  token = var.token # or `GITHUB_TOKEN`
}
