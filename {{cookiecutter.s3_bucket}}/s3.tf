resource "aws_s3_bucket" "{{cookiecutter.s3_bucket}}" {
  bucket = "{{cookiecutter.s3_bucket}}"
}

{% if cookiecutter.cross_region_replication %}
resource "aws_s3_bucket" "{{cookiecutter.s3_bucket}}_crr" {
  provider = "aws.${var.region_destination}"
}
{% endif %}
