

resource "aws_s3_bucket" "test" {
  bucket = "a-testbucket-77777"

  # tags = {
  #   Name        = "My bucket"
  #   Environment = "Dev"
  # }
  tags = var.tags
}
