resource "aws_lb_listener_rule" "rule1" {
  listener_arn            = var.listener_arn
  priority                = var.priority
  action {
    type                  = var.listener_type
    target_group_arn      = var.tg_arn
  }
  condition {
    path_pattern {
      values              = var.path_pattern
    }
  }
  lifecycle {
    ignore_changes = [
      action,
    ]
  }
}