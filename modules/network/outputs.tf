output "vpc_output" {
  value = huaweicloud_vpc.vpc.id
}

output "huaweicloud_vpc_subnet" {
   value = huaweicloud_vpc_subnet.subnet.id
}