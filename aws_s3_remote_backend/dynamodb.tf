resource "aws_dynamodb_table" "state_locking" {
  name         = "${local.component_name}-state-locking${var.suffix}"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"
  tags         = var.tags
  attribute {
    name = "LockID"
    type = "S"
  }
}
