#provider block

provider "aws" {

    region = "us-east-1"

}

resource "aws_s3_bucket" "mybucketname" {
  bucket = "urbain30-state-files"
}
