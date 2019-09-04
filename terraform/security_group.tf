resource "alicloud_security_group" "isucon9" {
  name        = "isucon9"
  vpc_id      = "${var.vpc_id}"
}

resource "alicloud_security_group_rule" "isucon9_allow_all_icmp" {
  type              = "ingress"
  ip_protocol       = "icmp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 10
  security_group_id = "${alicloud_security_group.isucon9.id}"
  cidr_ip           = "0.0.0.0/0"
}

resource "alicloud_security_group_rule" "isucon9_allow_https" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "443/443"
  priority          = 10
  security_group_id = "${alicloud_security_group.isucon9.id}"
  cidr_ip           = "0.0.0.0/0"
}

resource "alicloud_security_group_rule" "isucon9_allow_http" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "80/80"
  priority          = 10
  security_group_id = "${alicloud_security_group.isucon9.id}"
  cidr_ip           = "0.0.0.0/0"
}

resource "alicloud_security_group_rule" "isucon9_allow_ssh" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 10
  security_group_id = "${alicloud_security_group.isucon9.id}"
  cidr_ip           = "0.0.0.0/0"
}
