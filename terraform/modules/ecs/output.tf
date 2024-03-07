
output "service_id" {
  value = "${aws_ecs_service.service.id}"
}
output "ecs_service_name" {
  value       = "${aws_ecs_service.service.name}"
  description = "The name of the service."
}
output "td_arn" {
  value = "${aws_ecs_task_definition.taskdefinition.arn}"
}
output "target_resource_id" {
  value = aws_appautoscaling_target.ecs_target.resource_id
}
output "scale_policy_cpu_up_arn" {
  value = aws_appautoscaling_policy.scale-up-policy1.arn
}
output "scale_policy_cpu_down_arn" {
  value = aws_appautoscaling_policy.scale-down-policy1.arn
}
output "scale_policy_mem_up_arn" {
  value = aws_appautoscaling_policy.scale-up-policy2.arn
}
output "scale_policy_mem_down_arn" {
  value = aws_appautoscaling_policy.scale-down-policy2.arn
}
