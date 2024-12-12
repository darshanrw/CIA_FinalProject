resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3_bucket_name

  lifecycle {
    prevent_destroy = false
  }

  tags = {
    Environment = "Terraform"
    ManagedBy   = "Darshan Wadekar"
  }
}

resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.bucket
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "upload_tfstate" {
  bucket = var.s3_bucket_name
  key    = "terraform.tfstate"  # The name/path within the bucket
  source = var.file_path  # Path to the .tfstate file in your directory
  acl    = "private"  # You can adjust the ACL as needed

  depends_on = [aws_s3_bucket.terraform_state]
}