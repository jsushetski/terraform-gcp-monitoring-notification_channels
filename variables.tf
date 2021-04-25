variable "channel_type" {
  type = string

  validation {
    condition     = contains(["email", "sms"], var.channel_type)
    error_message = "The specified channel_type is not valid."
  }
}

variable "display_name" {
  type = string
}

variable "enabled" {
  type    = bool
  default = true
}

variable "project" {
  type = string
}

variable "email_address" {
  type    = string
  default = null
}

variable "cell_number" {
  type    = string
  default = null
}
