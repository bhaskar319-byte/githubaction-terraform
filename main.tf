provider "aws" {
  region = var.aws_region
}

resource "aws_acm_certificate" "ssl" {
  domain_name       = var.domain_name
  validation_method = "DNS"

  tags = {
    Name      = var.domain_name
    ManagedBy = "Terraform"
  }
}
