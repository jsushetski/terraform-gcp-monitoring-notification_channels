resource "google_monitoring_notification_channel" "channel" {
  provider = google

  display_name = "${var.channel_type}-${var.display_name}"
  enabled      = var.enabled
  type         = var.channel_type
  labels = {
    number        = var.cell_number
    email_address = var.email_address
  }
}
