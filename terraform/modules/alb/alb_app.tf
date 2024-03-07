#Application Loadbalancer

resource "aws_lb" "lb" {
  name                             = "${var.lb_name}"
  internal                         = "${var.internal}"
  load_balancer_type               = "${var.lb_type}"
  subnets                          = "${var.subnet_ids}"
  enable_deletion_protection       = "${var.enable_deletion_protection}"
  idle_timeout                     = "${var.idle_timeout}"
  tags                             = "${merge(var.default_tags, map("Name", var.lb_name))}"
  security_groups = var.sg_id
  access_logs {
    bucket  = var.bucket_logs
    prefix  = var.acceslogs_prefix
    enabled = var.enable_logs
  }
}