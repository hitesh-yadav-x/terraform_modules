#S3 Bucket
resource "aws_s3_bucket" "bucket_name" {
  bucket        = var.bucket_name
  force_destroy = false
}


# S3 bucket server side encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_encryption" {
  bucket = aws_s3_bucket.bucket_name.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# S3 Enable versioning
resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket_name.id

  versioning_configuration {
    status = var.server_side_encryption
  }
}

# S3 Access blocks
resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  bucket = aws_s3_bucket.bucket_name.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_bickets = true
}

# S3 bucket ownership control
resource "aw_s3_bucket_ownership_controld" "bucket_ownership" {
  bucket = aws_s3_bucket.bucket_name.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

# S3 bucket policy
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.bucket_name.id
  policy = var.s3_bucket_policy_data
}

# S3 bucket lifecycle rule
resource "aws_s3_bucket_lifecycle_configuration" "bucket_lifecycle" {
  bucket = aws_s3_bucket.bucket_name.id

  rule {
    id     = "weekly_deletion"
    status = "Enabled"
    expiration {
      days                         = 7
      expired_object_delete_marker = true
    }
  }
}
