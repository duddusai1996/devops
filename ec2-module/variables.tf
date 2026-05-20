variable "project_name" {
    default = "roboshop"
}

variable "env" {
    default = "dev"
}

variable "sg_ids" {
    default = ["sg-06b1a5d86497e9695"]
}

variable "instance_type" {
    default = "t3.small"
}

variable "component" {
    default = "catalogue"
}