variable "bucket_name" {
  type        = string
  default     = null
  description = "The name of the bucket to be created."
}

variable "bucket_prefix" {
  type        = string
  default     = null
  description = "The prefix to be used for the bucket name."
}

variable "server_side_encryption" {
  type        = string
  default     = "Enabled"
  description = "Enable or disable server side encryption."
}
