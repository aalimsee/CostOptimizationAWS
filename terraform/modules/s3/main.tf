resource "aws_s3_bucket" "reports" {
  bucket = var.bucket_name

  versioning {
    enabled = var.versioning
  }

  tags = {
    Name = "CostOptimizationReports"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.reports.bucket
}
