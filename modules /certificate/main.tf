
resource "aws_acm_certificate" "cert" {
  domain_name       = var.domain_name
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_acm_certificate_validation" "acm_valid" {
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = var.validation_record_fqdns
}


