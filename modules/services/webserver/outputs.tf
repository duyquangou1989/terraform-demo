output "privateip" {
  value = "${google_compute_instance.example.network_interface.0.network_ip}"
}

output "natip" {
  value = "${google_compute_instance.example.network_interface.0.access_config.0.nat_ip}"
}