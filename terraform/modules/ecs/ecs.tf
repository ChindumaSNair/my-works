#Task Definition
resource "aws_ecs_task_definition" "taskdefinition" {
  family                   = "${var.family}"
  requires_compatibilities = "${var.req_comp}"
  cpu                      = "${var.cpu}"
  memory                   = "${var.memory}"
  task_role_arn            = "${var.exe_role_arn}"
  execution_role_arn       = "${var.exe_role_arn}"
  network_mode             = "${var.nmode}"
  container_definitions    = "${var.template}"
  tags                     = "${merge(var.default_tags, map("Name", var.family))}"

  lifecycle {
    ignore_changes =[
      # execution_role_arn,
      # task_role_arn
    ]
  }
}

#ecs service
resource "aws_ecs_service" "service" {
  name                              = "${var.servicename}"
  cluster                           = "${var.clusterid}"
  task_definition                   = "${aws_ecs_task_definition.taskdefinition.arn}"
  #task_definition = "arn:aws:ecs:eu-west-1:863800670833:task-definition/ctd-hr-st2-euwe01-psft-employeeservice-01:7"
  desired_count                     = "${var.desired_count}"
  health_check_grace_period_seconds = var.grace_period
  network_configuration {
    subnets                         = "${var.subnet_ids}"
    assign_public_ip                = "${var.assign_public_ip}"
    security_groups                 = ["${var.sg_id}"]
  }
  load_balancer {
    target_group_arn                = var.tg_arn
    container_name                  = var.cname
    container_port                  = var.cport
  }
  load_balancer {
    target_group_arn                = var.tg_arn1
    container_name                  = var.cname
    container_port                  = var.cport
  }
  
  launch_type                       = "${var.launch_type}"
  deployment_controller {
    type                            = "${var.dc_type}"

  }
  lifecycle {
    ignore_changes = [
      task_definition,
      load_balancer,
      #tags
    ]
  }
  tags                              = "${merge(var.default_tags, map("Name", var.servicename))}"
  #tags                              = "${var.default_tags}"
}


### Log group
resource "aws_cloudwatch_log_group" "logs"{
  name  ="${var.logs}"
  retention_in_days ="${var.retention}"
  tags = "${merge(var.default_tags1, map("Name", var.logs))}"
}

###### ASG target
resource "aws_appautoscaling_target" "ecs_target" {
  max_capacity       = "${var.max_capacity}"
  min_capacity       = "${var.min_capacity}"
  resource_id        = "service/${var.clustername}/${aws_ecs_service.service.name}"
  role_arn           = "${var.ecs_iam_role}"
  scalable_dimension = "${var.scalable_dimension}"
  service_namespace  = "${var.service_namespace}"

  lifecycle {
    ignore_changes = [
      #min_capacity,
      #max_capacity
    ]
  }
}

###### Scale-down policy1
resource "aws_appautoscaling_policy" "scale-down-policy1" {
  name               = "${var.down_policy_name1}"
  policy_type        = "${var.policy_type}"
  resource_id        = "${aws_appautoscaling_target.ecs_target.resource_id}"
  scalable_dimension = "${aws_appautoscaling_target.ecs_target.scalable_dimension}"
  service_namespace  = "${aws_appautoscaling_target.ecs_target.service_namespace}"

  step_scaling_policy_configuration {
    adjustment_type         = "${var.adjustment_type}"
    cooldown                = "${var.down_cooldown}"
    metric_aggregation_type = "${var.down_metric_aggregation_type}"

    step_adjustment {
      metric_interval_upper_bound = "${var.down_metric_interval_upper_bound}"
      scaling_adjustment          = "${var.down_scaling_adjustment}"
    }
  }
  //depends_on = ["aws_appautoscaling_target.ecs_target"]
}

####### Scale-up policy1
resource "aws_appautoscaling_policy" "scale-up-policy1" {
  name               = "${var.up_policy_name1}"
  policy_type        = "${var.policy_type}"
  resource_id        = "${aws_appautoscaling_target.ecs_target.resource_id}"
  scalable_dimension = "${aws_appautoscaling_target.ecs_target.scalable_dimension}"
  service_namespace  = "${aws_appautoscaling_target.ecs_target.service_namespace}"

  step_scaling_policy_configuration {
    adjustment_type         = "${var.adjustment_type}"
    cooldown                = "${var.up_cooldown}"
    metric_aggregation_type = "${var.up_metric_aggregation_type}"

    # step_adjustment {
    #   metric_interval_upper_bound = "${var.up_metric_interval_upper_bound_01}"
    #   scaling_adjustment          = "${var.up_scaling_adjustment_01}"
    # }
    step_adjustment {
      metric_interval_lower_bound = "${var.up_metric_interval_lower_bound_01}"
      scaling_adjustment          = "${var.up_scaling_adjustment_01}"
    }
    //depends_on = ["aws_appautoscaling_target.ecs_target"]
  }
}
###### Scale-down policy2
resource "aws_appautoscaling_policy" "scale-down-policy2" {
  name               = "${var.down_policy_name2}"
  policy_type        = "${var.policy_type}"
  resource_id        = "${aws_appautoscaling_target.ecs_target.resource_id}"
  scalable_dimension = "${aws_appautoscaling_target.ecs_target.scalable_dimension}"
  service_namespace  = "${aws_appautoscaling_target.ecs_target.service_namespace}"

  step_scaling_policy_configuration {
    adjustment_type         = "${var.adjustment_type}"
    cooldown                = "${var.down_cooldown}"
    metric_aggregation_type = "${var.down_metric_aggregation_type}"

    step_adjustment {
      metric_interval_upper_bound = "${var.down_metric_interval_upper_bound}"
      scaling_adjustment          = "${var.down_scaling_adjustment}"
    }
  }
  //depends_on = ["aws_appautoscaling_target.ecs_target"]
}



####### Scale-up policy2
resource "aws_appautoscaling_policy" "scale-up-policy2" {
  name               = "${var.up_policy_name2}"
  policy_type        = "${var.policy_type}"
  resource_id        = "${aws_appautoscaling_target.ecs_target.resource_id}"
  scalable_dimension = "${aws_appautoscaling_target.ecs_target.scalable_dimension}"
  service_namespace  = "${aws_appautoscaling_target.ecs_target.service_namespace}"

  step_scaling_policy_configuration {
    adjustment_type         = "${var.adjustment_type}"
    cooldown                = "${var.up_cooldown}"
    metric_aggregation_type = "${var.up_metric_aggregation_type}"

    # step_adjustment {
    #   metric_interval_upper_bound = "${var.up_metric_interval_upper_bound_01}"
    #   scaling_adjustment          = "${var.up_scaling_adjustment_01}"
    # }
    step_adjustment {
      metric_interval_lower_bound = "${var.up_metric_interval_lower_bound_01}"
      scaling_adjustment          = "${var.up_scaling_adjustment_01}"
    }
    //depends_on = ["aws_appautoscaling_target.ecs_target"]
  }
}