output "name" {
  value       = "${aws_ecr_repository.ecr.name}"
  description = "The name of the repository."
}
output "url" {
  value       = "${aws_ecr_repository.ecr.repository_url}"
  description = "The uri of the repository."
}