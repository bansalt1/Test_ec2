terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws" 
            version = "~> 4.16"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "Tarun_tfe" {
    ami = "ami-009c5f630e96948cb"  
    instance_type = "t2.micro"
    cpu_core_count = "4"
    availability_zone = "ap-south-1"
}

resource "aws_security_group" "tfe_SG" {
    name = "TFE_SG"
    
    ingress {
        description = "Custom TCP Port 8800 - for replicated"
        from_port = 8800
        to_port = 8800
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "Custom TCP Port 80 - for TFE application"
        from_port = 80
        to_port = 80
        protocol = "HTTP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "Custom TCP Port 8800 - for replicated"
        from_port = 8800
        to_port = 8800
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

        ingress {
        description = "Custom TCP Port 8800 - for replicated"
        from_port = 8800
        to_port = 8800
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }



    }
