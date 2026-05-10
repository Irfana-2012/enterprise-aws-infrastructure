resource "aws_ecr_repository" "app" {
  name = "enterprise-nginx"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "enterprise-nginx"
  }
}