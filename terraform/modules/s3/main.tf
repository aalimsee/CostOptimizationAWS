resource "aws_s3_bucket" "cost_reports" {
  bucket = var.bucket_name
  versioning {
    enabled = var.versioning
  }

  tags = {
    Name = "aalimsee-CostOptimizationReports"
  }
}

output "s3_bucket_name" {
  value = aws_s3_bucket.cost_reports.bucket
}
