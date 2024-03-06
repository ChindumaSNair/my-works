terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "poc-terraform-automation"
    region         = "us-east-1"
    key            = "poc/terraform/infra.tfstate"
    #profile        = "migration"
  }
}