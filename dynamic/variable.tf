variable "ingress_rules" {
    default = [
        {
            port = 22
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "allows 22 port"
        },
        {
            port = 443
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "allows 443 port"   
        },
        {
            port = 3306
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "allows 3306 port"
        }
    ]
}

variable "egress_rules" {
    default = [
        {
            port = 0
            protocol = "-1"
            cidr_blocks = ["0.0.0.0/0"]
            description = "allows 22 port"
        }
        
    ]
}