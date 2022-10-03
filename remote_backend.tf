terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "3Stars-MB"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
