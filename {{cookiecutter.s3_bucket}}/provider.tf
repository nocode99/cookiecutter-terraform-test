provider "aws" {
  region = "${var.region}"
}

{% if cookiecutter.region_destination is not None %}
provider "aws" {
  alias  = "${var.region_destination}"
  region = "${var.region_destination}"
}
{% endif %}
