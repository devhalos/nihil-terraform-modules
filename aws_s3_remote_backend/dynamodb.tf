resource "aws_dynamodb_table" "state_locking" {

  name         = "${local.component_name}-state-locking"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = var.tags
}
