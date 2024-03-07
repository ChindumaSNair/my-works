variable "clusterid" {}
variable "cpu" {}
variable "memory" {}
# variable "cpucontainer" {}
# variable "memorycontainer" {}
variable "exe_role_arn" {}
variable "launch_type" {}
variable "assign_public_ip" {}
variable "dc_type" {}
#variable "cloud-platform" {}
variable "req_comp" {
  type = "list"
}
variable "family" {}
variable "servicename" {}
#variable "cluster_name" {}
variable "desired_count" {}
variable "grace_period" {}
# variable "s3bucket" {}
# variable "s3file" {}
variable "default_tags" {}
variable default_tags1 {}
variable "nmode" {}
variable "subnet_ids" {
  type = "list"
}
variable tg_arn {}
variable tg_arn1 {}
variable cname {}
variable cport {}

#variable "port" {}
variable "sg_id" {}
# variable sg_description {}
# variable vpc_id {}
variable "max_capacity" {}
variable "min_capacity" {}
variable "ecs_iam_role" {}
variable "scalable_dimension" {}
variable "service_namespace" {}
variable template {}

#variable "ecrname" {}
variable "clustername" {}
variable logs {}
variable retention {}
#variable logstreamname {}

variable "down_policy_name1" {}
variable "down_policy_name2" {}
//variable "down_policy_name_01" {}
variable "policy_type" {}
variable "adjustment_type" {}
variable "down_cooldown" {}
variable "down_metric_aggregation_type" {}
variable "down_metric_interval_upper_bound" {}
variable "down_scaling_adjustment" {}
variable "up_policy_name1" {}
variable "up_policy_name2" {}
//variable "up_policy_name_01" {}
variable "up_cooldown" {}
variable "up_metric_aggregation_type" {}
# variable "up_metric_interval_upper_bound_01" {}
# variable "up_scaling_adjustment_01" {}
variable "up_metric_interval_lower_bound_01" {}
variable "up_scaling_adjustment_01" {}