resource "aws_instance" "example" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-06b1a5d86497e9695"]

    tags = {
        Name = "provsioners_demo"
        Project = "Roboshop"
    }

     provisioner "local-exec" {
    command = "echo ${self.public_ip} > inventory.ini"
  }

  provisioner "local-exec" {
    command = "exit 1"
    on_failure = continue
  }

  provisioner "local-exec" {
    command = "echo script-2"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo 'Deleting the instance'"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo > inventory.ini"
  }

  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }

  provisioner "remote-exec" {
    inline = [
      "sudo systemctl stop nginx"
    ]
    when = destroy
  }

      
}
