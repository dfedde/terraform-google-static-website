# Static Website Terraform Module

Make a website from a bucket for GCE.

## Usage

```ruby
module "bucket_site" {
  source            = "GoogleCloudPlatform/lb-http/google"
  name              = "group-http-lb"
  bucket            = "${bucket.name}"
}
```
