terraform {
  backend "s3" {
    bucket                  = "andsantos-my-bucket-s3"
    region                  = "us-east-1"
    profile                 = "andsantos"
    key                     = "terraform_state/getting-started-lambda-sample.tfstate"
    shared_credentials_file = "~/.aws/credentials"
  }
}