output "repositry_url" {
    value = aws_ecr_repository.repo.repository_url
}

output "repositry_name" {
    value = aws_ecr_repository.repo.name
}