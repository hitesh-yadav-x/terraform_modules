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

variable "acl" {
    type        = string
    default     = "private"
    description = "The ACL that should be applied for the S3 bucket. Valid values can be private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write. Conflicts with grant."
}

variable "tags" {
    type        = map(string)
    default     = {}
    description = "Tags to be applied to the S3 bucket."
}

variable "attach_policy" {
    type        = bool
    default     = false
    description = "Controls if policies should be attached to the S3 bucket."
  
}
variable "policy_files" {
    type        = list(string)
    default     = []
    description = "Policy file names in JSON format. You can keep the files in a directory in your repo with relative path to current directory."
}