module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "2.8.0"

  bucket_prefix = "matheus-requino"
  acl    = "private"

  versioning = {
    enabled = true
  }

  tags = [
    Name = ${var.prefix}
    Department = "devops"
    Billable = true
  ]
}