
resource "aws_s3_bucket" "this" {
  bucket = "bucket-terraform-${random_pet.bucket.id}-${var.envinroment}"
  acl    = "private"

  tags = local.common_tags
}

resource "aws_s3_bucket" "manual" {
  bucket = "bucket-terraform-jpralves10"

  tags = {
    Criado = "23/07/2021"
    Importado = "23/07/2021"
    ManagedBy = "Terraform"
  }
}                                 

resource "aws_s3_bucket_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"

  tags = local.common_tags
}

resource "aws_s3_bucket_object" "random" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_pet.bucket.id}.json"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"

  tags = local.common_tags
}