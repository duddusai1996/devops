resource "aws_instance" "example" {
    ami = local.ami_id
    instance_type = local.instance_type
    vpc_security_group_ids = [local.sg_group_id]
    subnet_id = "subnet-0143235be468e4d89"
    tags = local.ec2_final_tags
}
