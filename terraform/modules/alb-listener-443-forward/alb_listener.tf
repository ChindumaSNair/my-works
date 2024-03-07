#listener
resource "aws_lb_listener" "listener" {
  load_balancer_arn     = "${var.lb_arn}"
  port                  = "${var.listener_port}"
  protocol              = "${var.listener_protocol}"
  ssl_policy            = "${var.sslpolicy}"
  certificate_arn       = "${var.certarn}"

  default_action {
    type                = "${var.listener_type}"
    target_group_arn    = "${var.tg_arn}"
  }
  lifecycle {
    ignore_changes = [
      default_action,
    ]
  }
}