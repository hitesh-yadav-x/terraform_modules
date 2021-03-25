variable "length" {
  type        = number
  default     = 15
  description = "Specifies the length of the random password to be generated."
}

variable "min_lower" {
  type        = number
  default     = 1
  description = "Specifies the minimum number of lowercase characters in the generated password."
}

variable "min_upper" {
  type        = number
  default     = 1
  description = "Specifies the minimum number of uppercase characters in the generated password."
}

variable "min_numeric" {
  type        = number
  default     = 1
  description = "Specifies the minimum number of numeric characters in the generated password."
}

variable "min_special" {
  type        = number
  default     = 1
  description = "Specifies the minimum number of special characters in the generated password."
}

variable "allow_special" {
  type        = bool
  default     = true
  description = "Specifies the minimum number of special characters in the generated password."
}

variable "override_special" {
  type        = string
  default     = "!@#$%&*()-_=+[]{}<>:?"
  description = "Specifies the special characters to be used in the password."
}