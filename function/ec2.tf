resource "aws_instance" "example" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-06b1a5d86497e9695"]

    tags = merge(
            var.common_tags,
            var.ec2_tags,
            var.app_tags
    )
}
