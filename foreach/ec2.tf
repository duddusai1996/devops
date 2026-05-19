resource "aws_instance" "example" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [data.aws_security_group.sg.id]
    tags = {
        Name = "terraform-demo"
        Project = "Roboshop"
    }
}

data "aws_security_group" "sg" {
  id = "sg-06b1a5d86497e9695"
}

