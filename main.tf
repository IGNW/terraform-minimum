resource "template_file" "timestamp" {
  filename = "timestamp.txt"

  provisioner "local-exec" {
    command = "date +%s > timestamp.txt"
  }
}

output "timestamp" {
  value = "${template_file.timestamp.rendered}"
}