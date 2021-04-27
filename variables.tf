variable "channel_type" {
  type        = string
  description = "Configures the notification channel type."

  validation {
    condition     = contains(["email", "sms"], var.channel_type)
    error_message = "The specified channel_type is not valid."
  }
}

variable "display_name" {
  type        = string
  description = "The display name for the notification channel.  This value will be prepended with '${channel_type}-'."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Enables/disables the notification channel."
}

variable "project" {
  type        = string
  description = "The name of the GCP project where the resource(s) will be created."
}

variable "email_address" {
  type        = string
  default     = null
  description = "The email address used for email notification channels."
}

variable "cell_number" {
  type        = string
  default     = null
  description = "The cell phone number used for SMS notification channels."
}
