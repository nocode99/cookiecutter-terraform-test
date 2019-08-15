{% if cookiecutter.kms_enabled %}
resource "aws_kms_key" "{{cookiecutter.s3_bucket_tf}}" {
  description = "KMS key for {{cookiecutter.s3_bucket}}"
}

resource "aws_kms_key_alias" "{{cookiecutter.s3_bucket_tf}}" {
  name          = "alias/{{cookiecutter.s3_bucket}}"
  target_key_id = "${aws_kms_key.{{cookiecutter.s3_bucket}}.key_id}"
}
{% endif %}
