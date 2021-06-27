
resource "huaweicloud_network_acl_rule" "allow" {
  name             = "my-rule-1"
  description      = "Regras de liberação"
  action           = "allow"
  protocol         = "tcp"
  destination_port = var.portas_allow
  enabled          = "true"
}

resource "huaweicloud_network_acl_rule" "denny" {
  name             = "my-rule-2"
  description      = "Regras de negação"
  action           = "deny"
  protocol         = "udp"
  destination_port = var.portas_denny
  enabled          = "false"
}


resource "huaweicloud_network_acl" "fw_acl" {
  name          = "fw-acl"
  subnets       = [huaweicloud_vpc_subnet.subnet.id]
  inbound_rules = [huaweicloud_network_acl_rule.allow.id,huaweicloud_network_acl_rule.denny.id]
  outbound_rules = [huaweicloud_network_acl_rule.allow.id,huaweicloud_network_acl_rule.denny.id]
}