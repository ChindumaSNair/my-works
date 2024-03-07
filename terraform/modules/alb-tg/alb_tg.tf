#Targetgroup
resource "aws_lb_target_group" "tg" {
  name                 = "${var.tg_name}"
  port                 = "${var.tg_port}"
  protocol             = "${var.tg_protocol}"
  target_type          = "${var.t_type}"
  vpc_id               = "${var.vpc_id}"
  tags                 = "${merge(var.default_tags, map("Name", var.tg_name))}"
  health_check{
    path                = var.hc_path
    protocol            = var.hc_protocol
    port                = var.hc_port
    matcher             = var.hc_matcher
  }
  # stickiness {
  #   cookie_duration     = 3600
  #   enabled             = true
  #   type                = "lb_cookie"
  # }
}