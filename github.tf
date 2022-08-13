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
      version = ">= 4.22.0"
    }
  }
}

variable "token" {
  default = null
}

provider "github" {
  owner = "makiton"
  token = ""
  app_auth {
    # id              = var.app_id              # or `GITHUB_APP_ID`
    # installation_id = var.app_installation_id # or `GITHUB_APP_INSTALLATION_ID`
    # pem_file        = var.app_pem_file        # or `GITHUB_APP_PEM_FILE`
  }
}
