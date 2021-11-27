terraform {
  backend "remote" {
    organization = "makiton"

    workspaces {
      name = "tf_github"
    }
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.18.1"
    }
  }
}

variable "token" {
}

provider "github" {
  token = var.token # or `GITHUB_TOKEN`
}
