resource "aws_s3_bucket" "jenkins_casc_state" {
  bucket = "${local.component_name}-state"
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "jenkins_casc_state" {
  bucket = aws_s3_bucket.jenkins_casc_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "jenkins_casc_state" {
  bucket = aws_s3_bucket.jenkins_casc_state.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "jenkins_casc_state" {
  bucket                  = aws_s3_bucket.jenkins_casc_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
