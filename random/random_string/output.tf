output "random_string" {
    value = random_string.random.result
    description = "Randomly generated lowercase string. Length is defaulted to 5 characters if not specified."
}