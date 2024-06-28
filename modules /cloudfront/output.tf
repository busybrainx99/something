
output "cloudfront_domain" {
  value = aws_cloudfront_distribution.static_cloudfront.domain_name
}

output "cloudfront_hosted" {
  value = aws_cloudfront_distribution.static_cloudfront.hosted_zone_id
}
