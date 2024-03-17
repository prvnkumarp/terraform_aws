
resource "aws_s3_bucket" "redshift_bucket" {
  bucket = var.rs_bucket
  force_destroy = true
  tags = {
    Name        = var.rs_bucket
    Environment = "Dev"
  }

}