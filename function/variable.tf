variable "common_tags" {
    default = {
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "ec2_tags" {
    default = {
        Name = "functions-demo"
        Environment = "prod"
    }
}

variable "app_tags" {
    default = {
        Environment = "prod"
        Application_ID = "123456798"
        Cost_center = "Texas"
    }
}
