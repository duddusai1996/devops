locals{
    instance_name = "${var.name}-${var.envi}"
    instance_type = "t3.micro"
    sg_group_id = "sg-06b1a5d86497e9695"
    common_tags = {
        project = "Roboshop"
        Terraform = "true"
        environment = "dev"
    }
    ec2_final_tags = merge(local.common_tags, var.ec2_tags)
    ami_id = "ami-0220d79f3f480ecf5"
}