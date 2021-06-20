resource "aws_security_group" "allow-https" {
  name        = "allow-https"
  description = "Allow HTTPS inbound traffic"
  

  ingress {
    description      = "Allow https traffic"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
  }

  tags = {
    Name = "allow-https"
  }
}

resource "aws_security_group" "allow-http" {
  name        = "allow-http"
  description = "Allow HTTP inbound traffic"
  

  ingress {
    description      = "Allow http traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
  }

  tags = {
    Name = "allow-http"
  }
}
