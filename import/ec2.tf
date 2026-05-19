resource "aws_instance" "import" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-06b1a5d86497e9695"]
    subnet_id = "subnet-0143235be468e4d89"
    tags = {
            Name = "import_demo"
            }
}
