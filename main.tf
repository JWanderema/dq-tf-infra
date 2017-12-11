terraform {
  backend "s3" {}
}

provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  alias      = "CI"
  region     = "eu-west-2"
  access_key = "${var.CI_ID}"
  secret_key = "${var.CI_KEY}"
}

provider "aws" {
  alias      = "MOCK"
  region     = "eu-west-2"
  access_key = "${var.MOCK_ID}"
  secret_key = "${var.MOCK_KEY}"
}

provider "aws" {
  alias      = "APPS"
  region     = "eu-west-2"
  access_key = "${var.APPS_ID}"
  secret_key = "${var.APPS_KEY}"
}