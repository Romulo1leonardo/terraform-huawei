terraform {
  required_providers {
    huaweicloud = {
      source = "huaweicloud/huaweicloud"
      version = "1.24.2"
    }
  }
}

data "huaweicloud_images_image" "myimage" {
  name        = "Ubuntu 18.04 server 64bit"
  most_recent = true
}

resource "huaweicloud_compute_instance" "myinstance" {
  name              = var.nome_maquina
  image_id          = data.huaweicloud_images_image.myimage.id
  flavor_id         = var.flavor_id
  availability_zone = "ap-southeast-1a"
  

  network {
    uuid = var.huaweicloud_vpc_subnet
  }
}