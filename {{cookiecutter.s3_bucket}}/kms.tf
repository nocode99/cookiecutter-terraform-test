{% if cookiecutter.kms_enabled %}
resource "aws_kms_key" "{{cookiecutter.s3_bucket}}" {
  description = "KMS key for {{cookiecutter.s3_bucket}}"
}

resource "aws_kms_key_alias "{{cookiecutter.s3_bucket}} {
  name          = "alias/{{cookiecutter.s3_bucket}}"
  target_key_id = "${aws_kms_key.{{cookiecutter.s3_bucket}}.key_id}"
}
{% endif %}
