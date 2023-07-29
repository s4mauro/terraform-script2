provider "aws" {
  region = "us-east-1"   
}

resource "aws_lb" "example_load_balancer" {
  name               = "s4mauroLoadBalancer"  # Replace with your desired load balancer name
  internal           = false                 # Set to true for internal load balancer within a VPC, false for public facing
  load_balancer_type = "application"         # ALB type

  subnets = [
    "subnet-xxxxxx",  # Replace with the ID of your desired subnets
    "subnet-xxxxxx",  # You can add more subnets as needed
  ]

  security_groups = [
    "sg-xxxxxx",  # Replace with the ID of your desired security group
  ]
}
