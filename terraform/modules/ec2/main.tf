resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  monitoring    = true

  tags = {
    Name = "CostOptimizationInstance"
  }

  user_data = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install -y stress fio python3
EOF
}

output "instance_id" {
  value = aws_instance.example.id
}
