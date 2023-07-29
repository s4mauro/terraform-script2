
resource "aws_iam_role" "example_role" {
  name = "s4mauroRole"   

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"  # Replace with the service that will assume this role (e.g., "lambda.amazonaws.com" for Lambda functions)
        }
      }
    ]
  })

  tags = {
    Name = "s4mauroRole"   
  }
}
