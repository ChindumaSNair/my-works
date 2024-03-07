resource "aws_ecr_repository" "ecr" {
  name = var.ecr_name
  tags = merge(var.default_tags, map("Name", var.ecr_name))
}