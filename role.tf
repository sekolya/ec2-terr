resource "aws_iam_role" "terraform_admin_role" {
  name               = "terraform_admin_role"
  assume_role_policy = <<EOF
{
"Version": "2012-10-17",
"Statement": [
{
"Action": "sts:AssumeRole",
"Principal": {
"Service": "ec2.amazonaws.com"
},
"Effect": "Allow",
"Sid": ""
}
]
}
EOF
}
resource "aws_iam_role_policy_attachment" "terraform_admin_policy"{
    role = aws_iam_role.terraform_admin_role.name
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
