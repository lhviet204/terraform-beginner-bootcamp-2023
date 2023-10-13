variable "terratowns_endpoint" {
 type = string
}

variable "terratowns_access_token" {
 type = string
}

variable "teacherseat_user_uuid" {
 type = string
}

variable "bucket_name" {
 description = "The name of the S3 bucket"
 type        = string
}

variable "turnbased_rgp" {
  type = object({
    public_path = string
    content_version = number
  })
}

variable "spindisc_bar" {
  type = object({
    public_path = string
    content_version = number
  })
}