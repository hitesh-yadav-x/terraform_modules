resource "random_password" "password" {
    length      = var.length
    min_lower   = var.min_lower
    min_upper   = var.min_upper
    min_numeric = var.min_numeric
    min_special = (var.allow_special ? var.min_special : 0)
    special     = var.allow_special
    lower       = true
    upper       = true
}