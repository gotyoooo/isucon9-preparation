

resource "alicloud_instance" "isucon9_test" {
  instance_name     = "isucon9-test"
  availability_zone = "${var.zone}"

  image_id      = "${var.isucon9_test_image_id}"
  instance_type = "ecs.sn1ne.large"

  system_disk_category = "cloud_efficiency"
  system_disk_size     = "40"

  internet_charge_type      = "PayByTraffic"
  internet_max_bandwidth_out = "100"

  role_name = "ISUCON9"
  key_name  = "isucon9"

  security_groups = ["${alicloud_security_group.isucon9.id}"]
  vswitch_id      = "${var.vswitch_id}"
}
