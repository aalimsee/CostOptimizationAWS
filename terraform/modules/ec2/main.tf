resource "aws_instance" "web" {
  ami = "ami-05576a079321f21f8"  # Use the correct AWS AMI
  instance_type = var.instance_type
  monitoring    = true

  tags = {
    Name = "aalimsee-WebServer"
  }

  user_data = <<EOF
  #!/bin/bash
  sudo yum update -y
  sudo yum install -y stress fio python3
  EOF
}

output "ec2_instance_id" {
  value = aws_instance.web.id
}
