variable "name"{
    type = string
    default = "locals"
}

variable "envi"{
    type = string
    default = "dev"
}

variable "ec2_tags"{
    default ={ 
        Name = "locals-demo"
        environment = "dev"
    }
}

variable "sg_tags"{
    default ={ 
        Name = "locals-demo"
    }
}