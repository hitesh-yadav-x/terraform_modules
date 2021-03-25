resource "random_string" "random" {
    length  = var.length
    special = false
    upper   = false
}