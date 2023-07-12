provider "aws" {
    region = "ap-south-1"
   access_key = "ASIAUWVAZLGW5IOBWY4G"
  secret_key = "A4RW7g2zIuQikxNjHDe/7FJDh2zo/V/XEv14Jpty"               
}
resource "aws_iam_user" "tarun" {
    name  = "tarun-test"
}
