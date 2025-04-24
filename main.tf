provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0b86aaed8ef90e45f"
instance_type = "t2.micro"
key_name = "key01"
vpc_security_group_ids = ["sg-023b01ee03394b2d8"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["ansible", "dev-1", "dev-2", "test-1", "test-2"]
}
