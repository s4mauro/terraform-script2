provider "aws" {
  region = "us-east-1"  
}

resource "aws_lb_target_group" "example_target_group" {
  name     = "s4mauroTargetGroup"   
  port     = 80                  
  protocol = "HTTP"                # Replace with "HTTP" or "HTTPS" depending on your application

  vpc_id = "vpc-xxxxxx"            # Replace with the ID of your desired VPC
}
