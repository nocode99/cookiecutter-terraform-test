variable "region" {
  default = "{{cookiecutter.region_source}}"
}

{% if cookiecutter.region_destination is not None %}
variable "region_destination" {
  default = "{{cookiecutter.region_destination}}"
}
{% endif %}
