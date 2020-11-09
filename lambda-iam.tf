resource "aws_iam_role_policy" "lambda_policy_tf" {
    name = "lambda_iam_policy_tf"
    role = aws_iam_role.lambda_role_tf.id
  
    policy = file("iam/lambda-policy.json")
}
  
resource "aws_iam_role" "lambda_role_tf" {
    name = "lambda_iam_role_tf"

    assume_role_policy = file("iam/lambda-assume-policy.json")
}
