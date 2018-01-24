provider  "vra7" {
    username = "${var.username}"
    password  = "${var.password}"
    tenant = "${var.tenant}"
    host = "${var.host}"
}

resource "vra7_resource" "machine" {
  count            = 1
  catalog_name = "CentOS 7.0 x64"
  resource_configuration = {
    Linux.cpu = "2"
  }
}
