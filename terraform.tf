provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "sumit" {
  name = "iamuser.${count.index}"
  count = 2
  path = "/system/"

}

output "arns" {
  value = aws_iam_user.sumit[*].arn
