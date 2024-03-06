# AWS Profile variables
variable region {}

# Data variables
variable subnet {}

#------------------------------------------------------------------------------------------------------------------#
# Tag variables

variable default_tags {
  type = map
}

### ALB
variable sg1_name_alb {}
variable sg_description_alb {}
variable siebel_trusted {}
variable hr_trusted {}

variable lb_name_alb {}
variable lb_name_hr_es_alb {}
variable lb_name_digout_alb {}
variable lb_name_ec_es_alb {}
variable lb_name_cs_strip_alb {}
variable lb_name_athomecs_alb {}
variable lb_name_oehas_alb {}
variable lb_name_hrtintcs_alb {}
variable lb_name_fmiintcs_alb {}
variable lb_name_authority_alb {}
variable lb_name_employee_alb {}
variable lb_name_hrmintcs_alb {}
variable lb_name_levintcs_alb {}
variable lb_name_imtechextcs_alb {}
variable internal_alb {}
variable lb_type_alb {}
variable enable_deletion_protection_alb {}
variable idle_timeout {}
variable acceslogs_prefix_alb {}
variable acceslogs_prefix_hr_es_alb {}
variable acceslogs_prefix_digout_alb {}
variable acceslogs_prefix_ec_es_alb {}
variable acceslogs_prefix_cs_strip_alb {}
variable acceslogs_prefix_athomecs_alb {}
variable acceslogs_prefix_oehas_alb {}
variable acceslogs_prefix_hrtintcs_alb {}
variable acceslogs_prefix_fmiintcs_alb {}
variable acceslogs_prefix_authority_alb {}
variable acceslogs_prefix_employee_alb {}
variable acceslogs_prefix_hrmintcs_alb {}
variable acceslogs_prefix_levintcs_alb {}
variable acceslogs_prefix_imtechextcs_alb {}
variable bucketname_logs {}
variable enable_logs_alb {}

variable tg_name_hr_as_alb {}
variable tg_name2_hr_as_alb {}
variable tg_name_hr_es_alb {}
variable tg_name2_hr_es_alb {}
variable tg_name_digout_alb {}
variable tg_name_ec_es_alb {}
variable tg_name2_ec_es_alb {}
variable tg_name_cs_strip_alb {}
variable tg_name2_cs_strip_alb {}
variable tg_name_athomecs_alb {}
variable tg_name_oehas_alb {}
variable tg_name_hrtintcs_alb {}
variable tg_name2_hrtintcs_alb {}
variable tg_name_fmiintcs_alb {}
variable tg_name2_fmiintcs_alb {}
variable tg_name_authority_alb {}
variable tg_name2_authority_alb {}
variable tg_name_employee_alb {}
variable tg_name2_employee_alb {}
variable tg_name_hrmintcs_alb {}
variable tg_name2_hrmintcs_alb {}
variable tg_name_levintcs_alb {}
variable tg_name2_levintcs_alb {}
variable tg_name_imtechextcs_alb {}
variable tg_name2_imtechextcs_alb {}
variable tg_port_alb {}
variable tg_protocol_alb {}
variable t_type_alb {}
variable hc_path_alb {}
variable hc_protocol_alb {}
variable hc_port_alb {}
variable hc_matcher_alb {}

### Listener
variable listener_port_alb_80 {}
variable listener_protocol_alb_HTTP {}
variable listener_type_alb_forward {}

variable listener_type_alb_fixedresponse {}
variable listener_port_alb_443 {}
variable listener_protocol_alb_HTTPS {}
variable sslpolicy_alb {}

variable priority_hr_as {}
variable path_pattern_hr_as {}
variable priority_hr_es {}
variable path_pattern_hr_es {}
variable priority_digout {}
variable path_pattern_digout {}
variable priority_ec_es {}
variable path_pattern_ec_es {}
variable priority_cs_strip {}
variable path_pattern_cs_strip {}
variable priority_athomecs {}
variable path_pattern_athomecs {}
variable priority_oehas {}
variable path_pattern_oehas {}
variable priority_hrtintcs {}
variable path_pattern_hrtintcs {}
variable priority_fmiintcs {}
variable path_pattern_fmiintcs {}
variable priority_authority {}
variable path_pattern_authority {}
variable priority_employee {}
variable path_pattern_employee {}

#### ECR
variable ecr_name {}
variable ecr_name_hr_as {}
variable ecr_name_hr_es {}
variable ecr_name_digout {}
variable ecr_name_ec_es {}
variable ecr_name_cs_strip {}
variable ecr_name_athomecs {}
variable ecr_name_oehas {}
variable ecr_name_hrtintcs {}
variable ecr_name_fmiintcs {}
variable ecr_name_authority {}
variable ecr_name_employee {}
variable ecr_name_hrmintcs {}
variable ecr_name_levintcs {}
variable ecr_name_imtechextcs {}

###Cluster
variable cluster_name {}
variable ciname {}
variable value {}

###ECS
variable cname_hr_as {}
variable cname_hr_es {}
variable cname_digout {}
variable cname_ec_es {}
variable cname_cs_strip {}
variable cname_athomecs {}
variable cname_oehas {}
variable cname_hrtintcs {}
variable cname_fmiintcs {}
variable cname_authority {}
variable cname_employee {}
variable cname_hrmintcs {}
variable cname_levintcs {}
variable cname_imtechextcs {}
variable portcontainer {}
variable cpucontainer {}
variable memorycontainer {}
variable logs_hr_as {}
variable logs_hr_es {}
variable logs_digout {}
variable logs_ec_es {}
variable logs_cs_strip {}
variable logs_athomecs {}
variable logs_oehas {}
variable logs_hrtintcs {}
variable logs_fmiintcs {}
variable logs_authority {}
variable logs_employee {}
variable logs_hrmintcs {}
variable logs_levintcs {}
variable logs_imtechextcs {}

variable family_hr_as {}
variable family_hr_es {}
variable family_digout {}
variable family_ec_es {}
variable family_cs_strip {}
variable family_athomecs {}
variable family_oehas {}
variable family_hrtintcs {}
variable family_fmiintcs {}
variable family_authority {}
variable family_employee {}
variable family_hrmintcs {}
variable family_levintcs {}
variable family_imtechextcs {}
variable req_comp {}
variable cpu {}
variable memory {}
variable nmode {}

variable servicename_hr_as {}
variable servicename_hr_es {}
variable servicename_digout {}
variable servicename_ec_es {}
variable servicename_cs_strip {}
variable servicename_athomecs {}
variable servicename_oehas {}
variable servicename_hrtintcs {}
variable servicename_fmiintcs {}
variable servicename_authority {}
variable servicename_employee {}
variable servicename_hrmintcs {}
variable servicename_levintcs {}
variable servicename_imtechextcs {}
variable desired_count_hr_as {}
variable desired_count_hr_es {}
variable desired_count_digout {}
variable desired_count_ec_es {}
variable desired_count_cs_strip {}
variable desired_count_athomecs {}
variable desired_count_oehas {}
variable desired_count_hrtintcs {}
variable desired_count_fmiintcs {}
variable desired_count_authority {}
variable desired_count_employee {}
variable desired_count_hrmintcs {}
variable desired_count_levintcs {}
variable desired_count_imtechextcs {}
variable grace_period {}
variable assign_public_ip {}
variable launch_type {}
variable dc_type {}
variable dc_type_bg {}

variable max_capacity_hr_as {}
variable min_capacity_hr_as {}
variable max_capacity_hr_es {}
variable min_capacity_hr_es {}
variable max_capacity_digout {}
variable min_capacity_digout {}
variable max_capacity_ec_es {}
variable min_capacity_ec_es {}
variable max_capacity_cs_strip {}
variable min_capacity_cs_strip {}
variable max_capacity_athomecs {}
variable min_capacity_athomecs {}
variable max_capacity_oehas {}
variable min_capacity_oehas {}
variable max_capacity_hrtintcs {}
variable min_capacity_hrtintcs {}
variable max_capacity_fmiintcs {}
variable min_capacity_fmiintcs {}
variable max_capacity_authority {}
variable min_capacity_authority {}
variable max_capacity_employee {}
variable min_capacity_employee {}
variable max_capacity_hrmintcs {}
variable min_capacity_hrmintcs {}
variable max_capacity_levintcs {}
variable min_capacity_levintcs {}
variable max_capacity_imtechextcs {}
variable min_capacity_imtechextcs {}
variable scalable_dimension {}
variable service_namespace {}

variable down_policy_name1 {}
variable down_policy_name2 {}
variable policy_type {}
variable down_cooldown {}
variable down_metric_aggregation_type {}
variable down_metric_interval_upper_bound {}
variable down_scaling_adjustment {}
variable up_policy_name1 {}
variable up_policy_name2 {}
variable up_cooldown {}
variable adjustment_type {}
variable up_metric_aggregation_type {}
# variable up_metric_interval_upper_bound_01 {}
# variable up_scaling_adjustment_02 {}
variable up_metric_interval_lower_bound_01 {}
variable up_scaling_adjustment_01 {}

variable sg_name_ecs {}
variable sg_description_ecs {}
variable retention_ecs {}

### ACM
variable domainname_pub_apg {}
variable sec_policy {}
variable endpoint_type_domain {
  type = "list"
}

### APG public
variable apg_name_pub {}
variable apg_description_pub {}
variable endpoint_pub {}
variable truststore_uri {}
variable stage_name_api {}

### APG public usage plan
variable usage_plan_api_pub {}
variable description_usp_api_pub {}

### APG public key
variable key_name_sab {}
variable key_value_sab {}
variable description_key_sab {}
variable key_type {}

### NLB TG
variable tg_name_nlb {}
variable tg_port_nlb {}
variable tg_protocol_nlb {}
variable t_type_nlb {}
variable deregistration_delay_nlb {}
variable hc_port_nlb {}
variable hc_protocol_nlb {}
variable stickiness_enabled_tg_nlb {}

### SSM
variable ssm_parameter_psft_un {}
variable description_psft_un {}
variable parameter_value_psft_un {}

variable ssm_parameter_psft_pw {}
variable description_psft_pw {}
variable parameter_value_psft_pw {}

variable ssm_parameter_hrr_un {}
variable description_hrr_un {}
variable parameter_value_hrr_un {}

variable ssm_parameter_hrr_pw {}
variable description_hrr_pw {}
variable parameter_value_hrr_pw {}

variable ssm_parameter_ci_un {}
variable description_ci_un {}
variable parameter_value_ci_un {}

variable ssm_parameter_ci_pw {}
variable description_ci_pw {}
variable parameter_value_ci_pw {}

variable ssm_parameter_pla_un {}
variable description_pla_un {}
variable parameter_value_pla_un {}

variable ssm_parameter_pla_pw {}
variable description_pla_pw {}
variable parameter_value_pla_pw {}

variable ssm_parameter_ldap_un {}
variable description_ldap_un {}
variable parameter_value_ldap_un {}

variable ssm_parameter_ldap_pw {}
variable description_ldap_pw {}
variable parameter_value_ldap_pw {}

variable ssm_parameter_sharepoint_un {}
variable description_sharepoint_un {}
variable parameter_value_sharepoint_un {}

variable ssm_parameter_sharepoint_pw {}
variable description_sharepoint_pw {}
variable parameter_value_sharepoint_pw {}

variable alarm_mem_ecs1_50 {}
variable alarm_mem_ecs1_80 {}
variable alarm_cpu_ecs1_50 {}
variable alarm_cpu_ecs1_80 {}
variable alarm_mem_ecs2_50 {}
variable alarm_mem_ecs2_80 {}
variable alarm_cpu_ecs2_50 {}
variable alarm_cpu_ecs2_80 {}
variable comp_operator_ecs_80 {}
variable comp_operator_ecs_50 {}
variable matric_name_cpu_ecs {}
variable matric_name_mem_ecs {}
variable namespace_ecs {}
variable evaluation_periods_ecs {}
variable period_ecs {}
variable statistic_ecs {}
variable threshold_ecs_80 {}
variable threshold_ecs_50 {}
variable alarm_description_cpu_up_ecs {}
variable alarm_description_cpu_down_ecs {}
variable alarm_description_mem_up_ecs {}
variable alarm_description_mem_down_ecs {}

variable metric_name_alb_healthy_host {}
variable metric_name_alb_5xx {}
variable namespace_alb {}

###  Dashboard
variable dashboard_name {}
variable dashboard_employee {}

### Code deploy
variable codedeploy_app_platform {}
variable codedeploy_app_name {}

variable codedeploy_dg_name {}
variable codedeploy_dg_hr_es {}
variable codedeploy_dg_ec_es {}
variable codedeploy_dg_cs_strip {}
variable codedeploy_dg_hrtintcs {}
variable codedeploy_dg_authority {}
variable codedeploy_dg_fmiintcs {}
variable codedeploy_dg_employee {}
variable codedeploy_dg_hrmintcs {}
variable codedeploy_dg_levintcs {}
variable codedeploy_dg_imtechextcs {}
variable codedeploy_dc_name {}
variable codedeploy_events {}
variable action_on_timeout {}
variable post_deployment_action {}
variable wait_time {}
variable deployment_option {}
variable deployment_type {}

### codebuild
variable codebuild_athome_build {}
variable codebuild_athome_deploy {}
variable bucket_codepipeline {}

### Code pipeline
variable codepipeline_athomecs {}
variable repository_id_athomecs {}
variable output_source_athomecs {}
variable input_build_athomecs {}
variable output_build_athomecs {}
variable input_deploy_athomecs {}
variable output_deploy_athomecs {}
variable stage_approve {}
variable repo_uri_name {}
variable docker_name {}
variable docker_value {}
variable env_name {}
variable env_value {}
variable task_def_name {}
variable cluster_name_env {}
variable service_name {}