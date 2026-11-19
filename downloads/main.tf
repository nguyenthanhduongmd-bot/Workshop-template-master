terraform {
  required_version = ">= 1.6.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "my_ip_cidr" {
  type        = string
  description = "Public IPv4 address with a /32 suffix"
}

variable "alert_email" {
  type        = string
  description = "Email address for SNS notifications"
}

provider "aws" {
  region  = var.region
  profile = "workshop-tf"

  default_tags {
    tags = {
      Project = "aws-network-workshop"
    }
  }
}