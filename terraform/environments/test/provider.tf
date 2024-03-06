provider "aws" {
  region  = var.region
  profile = var.profile
  assume_role {
    role_arn = "arn:aws:iam::863800670833:role/iar-MigrationTeam"
  }
}

