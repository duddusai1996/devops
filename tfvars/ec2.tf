resource "aws_instance" "workspace-demo" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = var.instance_type
    vpc_security_group_ids = ["sg-06b1a5d86497e9695"]

    tags = {
        Name = "terraform-state-demo-${var.environment}"
        Project = "Roboshop"
        environment = var.environment
    }
}