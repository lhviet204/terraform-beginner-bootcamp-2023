output "bucket_name" {
  description = "Bucket name for our static website hosting"
  value = module.turnbased_rgp_home.bucket_name
}

output "s3_website_endpoint" {
  description = "S3 Static Website hosting endpoint"
  value = module.turnbased_rgp_home.website_endpoint
}

output "cloudfront_url" {
  description = "The CloudFront Distribution Domain Name"
  value = module.turnbased_rgp_home.domain_name
}