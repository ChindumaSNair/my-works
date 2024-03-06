
# Data block for fetching the VPC ID
data "aws_vpc" "vpc_id" {
  filter {
    name   = "tag:Name"
    values = ["poc-vpc"]
  }
}

# Data block for fetching the subnet ID for different subnets
data "aws_subnet" "trusted1" {
  vpc_id = data.aws_vpc.vpc_id.id
  tags = {
    Name = lookup(var.subnet, "private1")
  }
}
data "aws_subnet" "trusted2" {
  vpc_id = data.aws_vpc.vpc_id.id
  tags = {
    Name = lookup(var.subnet, "private2")
  }
}
data "aws_subnet" "restricted1" {
  vpc_id = data.aws_vpc.vpc_id.id
  tags = {
    Name = lookup(var.subnet, "public1")
  }
}
data "aws_subnet" "restricted2" {
  vpc_id = data.aws_vpc.vpc_id.id
  tags = {
    Name = lookup(var.subnet, "public2")
  }
}


##data for json- ECS
/* data "template_file" "policy_hr_as" {
  template = "${file("scripts/service.json")}"
  vars = {
    name    = "${var.cname_hr_as}"
    port    = "${var.portcontainer}"
    ecrname = "${var.ecr_name_hr_as}"
    cpu     = "${var.cpucontainer}"
    memory  = "${var.memorycontainer}"
    logs    = "${var.logs_hr_as}"
  }
}


data "aws_iam_role" "ecsTaskExecutionRole" {
  name = "iar-EcsTaskExecution-np-psft"
}
data "aws_iam_role" "ecsIamRole" {
  name = "AWSServiceRoleForApplicationAutoScaling_ECSService"
}

### ACM ALB

data "aws_kms_key" "kms_psft" {
  key_id = "1bed04ce-b60d-4259-8a6e-5880f5b36bee"
}


#### Dashboard
data "template_file" "dashboard" {
  template = "${file("scripts/dashboard1.json")}"
  vars = {
    namespace_alb                = var.namespace_alb
    metric_name_alb_healthy_host = var.metric_name_alb_healthy_host
    metric_name_alb_5xx          = var.metric_name_alb_5xx
    tg_arn_suffix                = module.alb_tg_hr_as.tg_arn_suffix
    tg2_arn_suffix               = module.alb_tg2_hr_as.tg_arn_suffix
    alb_arn_suffix               = module.alb_ecs.alb_arn_suffix
    namespace_ecs                = var.namespace_ecs
    matric_name_cpu_ecs          = var.matric_name_cpu_ecs
    matric_name_mem_ecs          = var.matric_name_mem_ecs
    servicename                  = var.servicename_hr_as
    clustername                  = var.cluster_name
  }
}
data "template_file" "dashboard_employee" {
  template = "${file("scripts/dashboard1.json")}"
  vars = {
    namespace_alb                = var.namespace_alb
    metric_name_alb_healthy_host = var.metric_name_alb_healthy_host
    metric_name_alb_5xx          = var.metric_name_alb_5xx
    tg_arn_suffix                = module.alb_tg_employee.tg_arn_suffix
    tg2_arn_suffix               = module.alb_tg2_employee.tg_arn_suffix
    alb_arn_suffix               = module.alb_employee.alb_arn_suffix
    namespace_ecs                = var.namespace_ecs
    matric_name_cpu_ecs          = var.matric_name_cpu_ecs
    matric_name_mem_ecs          = var.matric_name_mem_ecs
    servicename                  = var.servicename_employee
    clustername                  = var.cluster_name
  }
}
 */