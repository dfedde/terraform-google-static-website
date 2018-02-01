resource "google_compute_url_map" "default" {
  name = "${var.name}-url-map"
  default_service = "${google_compute_backend_bucket.default.self_link}"
}

resource "google_compute_backend_bucket" "default" {
  name = "${var.name}-backend-bucket"
  bucket_name = "${var.bucket}"
  enable_cdn = true
}

resource "google_compute_target_http_proxy" "default" {
  name = "${var.name}-http-proxy"
  url_map = "${google_compute_url_map.default.self_link}"
}

resource "google_compute_global_forwarding_rule" "default" {
  name = "default-rule"
  target = "${google_compute_target_http_proxy.default.self_link}"
  port_range = "80"
}
