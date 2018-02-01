variable bucket {
  description = "Name of the bucket to make a website out of (must have website config turned on)"
  default     = ""
}

variable name {
  description = "Name for the forwarding rule and prefix for supporting resources"
}
