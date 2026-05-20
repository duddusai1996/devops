resource "aws_instance" "workspace-demo" {
    ami = local.ami_id
    instance_type = lookup(var.instance_type, local.environment)
    vpc_security_group_ids = ["sg-06b1a5d86497e9695"]

    tags = {
        Name = "${var.project}-${local.environment}"
        Project = "Roboshop"
        environment = local.environment
    }
}