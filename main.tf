provider "google" {
    project = "vti-sandbox"
    region = "asia-southeast1"
}

module "webserver" {
  source = "./modules/services/webserver"

  nameinst = "modulevm"
  machinespec = "e2-medium"
  zoneinst = "asia-southeast1-b"
  ipinst = "10.30.70.2"
  networkinst = "dl-network-new"
  subnetworkinst = "postgres"
}

output "outnat" {
  value = "${module.webserver.natip}"
}

output "outpriv" {
  value = "${module.webserver.privateip}"
}