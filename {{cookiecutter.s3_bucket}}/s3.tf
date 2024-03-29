resource "aws_s3_bucket" "{{cookiecutter.s3_bucket_tf}}" {
  bucket = "{{cookiecutter.s3_bucket}}"
}

{% if cookiecutter.cross_region_replication %}
resource "aws_s3_bucket" "{{cookiecutter.s3_bucket_tf}}_crr" {
  provider = "aws.${var.region_destination}"
}
{% endif %}
