resource "null_resource" "test-1" {
}
resource "random_string" "random" {
  length = 16
  special = true
  override_special = "/@£$"
}
