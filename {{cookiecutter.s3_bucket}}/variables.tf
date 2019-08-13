variable "region" {
  default = "{{cookiecutter.region_source}}"
}

{% if cookiecutter.cross_region_replication %}
variable "region_destination" {
  default = "{{cookiecutter.region_destination}}"
}
{% endif %}
