provider "aws" {
    //alias = "us-east-1"
    version = "~> 3.0"
    region = "us-east-1"  
}


resource "aws_s3_bucket" "nginx-logs" {
  bucket = "nginx-logs"
  acl    = "private"

  tags = {
    Name = "nginx-logs"
  }
}

resource "aws_instance" "ec2" {
    //count = 1
    ami = var.images["ubuntu-server-us-east-1"]
    instance_type = "t2.micro"
    key_name = var.ssh-key["terraform-aws-local"]
    monitoring = true
    associate_public_ip_address = true
    tags = {
        //Name = "ec2-${count.index}"
        Name = "ec2-kroton"
    }
    vpc_security_group_ids = [aws_security_group.allow-https.id, aws_security_group.allow-http.id]
    depends_on = [aws_s3_bucket.nginx-logs]
 
}

