provider "aws" {
  region = "${var.region}"
}

{% if cookiecutter.cross_region_replication %}
provider "aws" {
  alias  = "${var.region_destination}"
  region = "${var.region_destination}"
}
{% endif %}
