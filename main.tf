resource "aws_s3_bucket" "test" {
  bucket = "a-testbucket-77777"

  # tags = {
  #   Name        = "My bucket"
  #   Environment = "Dev"
  # }
  tags = var.tags
}

resource "aws_security_group" "allow_tls" {
  name        = "a-allow-tls-test-7777"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.cidr_blocks]
  }