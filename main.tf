provider "aws" {
region = "us-east-1"

}

data "aws_ami" "myami" {



  most_recent = true



  owners = ["amazon"]



  filter{

    name = "name"

    values = ["amzn2-ami-hvm*"]

}



}

resource "aws_instance" "test-ec2" {



ami = "ami-02dfbd4ff395f2a1b"



instance_type = "t2.micro"

  tags = {

    Name = "Instance-terraform"

  }


}




