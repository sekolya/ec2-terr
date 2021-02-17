
resource "aws_iam_instance_profile" "terraform_admin_profile" {
  name = "terraform_admin_profile"
  role = aws_iam_role.terraform_admin_role.name
}