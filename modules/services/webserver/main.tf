resource "google_compute_instance" "example" {
    name = "${var.nameinst}"
    machine_type = "${var.machinespec}"
    zone = "${var.zoneinst}"

    boot_disk {
      initialize_params {
          image = "debian-cloud/debian-10"
      }
    }
    network_interface {
      network = "${var.networkinst}"
      subnetwork = "${var.subnetworkinst}"
      network_ip = "${var.ipinst}"
      access_config {
        
      }
    }
}