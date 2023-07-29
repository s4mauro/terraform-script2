provider "aws" {
  region = "us-east-1"   
}

resource "aws_instance" "ubuntu_vm" {
  ami           = "ami-xxxxxx"  # Replace with the AMI ID of Ubuntu 22 (Ubuntu 22 is not released at the time of my knowledge cutoff in September 2021, so please ensure you use the correct AMI ID for Ubuntu 22)
  instance_type = "t2.micro"    # Replace with your desired instance type

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 8
    delete_on_termination = true
  }

  ebs_block_device {
    device_name           = "/dev/sdb"
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  user_data = file("user_data.sh")

  tags = {
    Name = "UbuntuVM"
  } 
  provider "aws" {
  region = "us-east-1"   
}

resource "aws_instance" "ubuntu_vm" {
  ami           = "ami-xxxxxx"  # Replace with the AMI ID of Ubuntu 22
  instance_type = "t2.micro"    # Replace with your desired instance type

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 8
    delete_on_termination = true
  }

  ebs_block_device {
    device_name           = "/dev/sdb"
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  user_data = file("user_data.sh")

  tags = {
    Name = "UbuntuVM"
  }
}

# Additional EBS volumes to attach
resource "aws_volume_attachment" "volume_attach_2" {
  device_name = "/dev/sdc"
  volume_id   = "vol-xxxxxx"              

  instance_id = aws_instance.ubuntu_vm.id
}

resource "aws_volume_attachment" "volume_attach_3" {
  device_name = "/dev/sdd"
  volume_id   = "vol-xxxxxx"   

  instance_id = aws_instance.ubuntu_vm.id
}

resource "aws_volume_attachment" "volume_attach_4" {
  device_name = "/dev/sde"
  volume_id   = "vol-xxxxxx"      

  instance_id = aws_instance.ubuntu_vm.id
}

}
provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

resource "aws_instance" "ubuntu_vm" {
  ami           = "ami-xxxxxx"  # Replace with the AMI ID of Ubuntu 22
  instance_type = "t2.micro"    # Replace with your desired instance type

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 8
    delete_on_termination = true
  }

  # ... Add other attributes for the instance like user_data, tags, etc.
}

# Attach additional EBS volumes to the EC2 instance
resource "aws_volume_attachment" "volume_attach_2" {
  device_name = "/dev/sdc"
  volume_id   = "vol-xxxxxx"  # Replace with the EBS volume ID for the second volume

  instance_id = aws_instance.ubuntu_vm.id
}

resource "aws_volume_attachment" "volume_attach_3" {
  device_name = "/dev/sdd"
  volume_id   = "vol-xxxxxx"  # Replace with the EBS volume ID for the third volume

  instance_id = aws_instance.ubuntu_vm.id
}

resource "aws_volume_attachment" "volume_attach_4" {
  device_name = "/dev/sde"
  volume_id   = "vol-xxxxxx"  # Replace with the EBS volume ID for the fourth volume

  instance_id = aws_instance.ubuntu_vm.id
}

resource "aws_volume_attachment" "volume_attach_5" {
  device_name = "/dev/sdf"
  volume_id   = "vol-xxxxxx"  # Replace with the EBS volume ID for the fifth volume

  instance_id = aws_instance.ubuntu_vm.id
}

resource "aws_volume_attachment" "volume_attach_6" {
  device_name = "/dev/sdg"
  volume_id   = "vol-xxxxxx"  # Replace with the EBS volume ID for the sixth volume

  instance_id = aws_instance.ubuntu_vm.id
}

resource "aws_volume_attachment" "volume_attach_7" {
  device_name = "/dev/sdh"
  volume_id   = "vol-xxxxxx"  # Replace with the EBS volume ID for the seventh volume

  instance_id = aws_instance.ubuntu_vm.id
}

resource "aws_volume_attachment" "volume_attach_8" {
  device_name = "/dev/sdi"
  volume_id   = "vol-xxxxxx"  # Replace with the EBS volume ID for the eighth volume

  instance_id = aws_instance.ubuntu_vm.id
}

resource "aws_volume_attachment" "volume_attach_9" {
  device_name = "/dev/sdj"
  volume_id   = "vol-xxxxxx"  # Replace with the EBS volume ID for the ninth volume

  instance_id = aws_instance.ubuntu_vm.id
}
 





