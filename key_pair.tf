provider "aws" {
  region = "us-east-1"  
}

resource "aws_key_pair" "example_keypair" {
  key_name   = "s4mauroKeyPair"  # Replace with your desired key pair name
  public_key = file("AKIA3OHAJN7EQD6BPBLT")  # Replace with the path to your public key file
}
