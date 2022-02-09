data "google_compute_instance_template" "k8s-template" {
    name         = "kubernetes-template-1"
    project = "peerless-window-333808"
}

resource "google_compute_instance_from_template" "master" {
  name = "master01"
  zone = "europe-west3-c"

  source_instance_template = data.google_compute_instance_template.k8s-template.id

 
 
}

resource "google_compute_instance_from_template" "node" {
  count = 2
  name = "node-${count.index}"
  zone = "europe-west3-c"

  source_instance_template = data.google_compute_instance_template.k8s-template.id


}