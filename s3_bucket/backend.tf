terraform {
    required_version = "~> 1.0"
  required_providers {
    aws = {
      version = ">= 3.0"
      source = "hashicorp/aws"
    }
  }
 
    backend "s3" {
    bucket = "urbain30-state-files"
    key    = "terraform/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    region = "us-east-1"
  }
 
}

resource "aws_dynamodb_table" "tf_lock" {
    name = "terraform-lock"
    hash_key = "LockID"
        read_capacity = 3
        write_capacity = 3
        attribute {
            name = "LockID"
            type = "S"
        }
        tags = {
            Name = "Terraform Lock Table"
        }
        lifecycle {
            prevent_destroy = false
        }
}

#Provider Block
/*provider "aws" {
    region = "us-east-1"
    profile = "default"
}
*/