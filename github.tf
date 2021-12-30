terraform {
  backend "remote" {
    organization = "makiton"

    workspaces {
      name = "tf_github"
    }
  }
  required_providers {
    github = {
      source  = "hashicorp/github"
      version = "4.19.0"
    }
  }
}

variable "token" {
}

provider "github" {
  owner = "makiton"
  token = var.token # or `GITHUB_TOKEN`
}
