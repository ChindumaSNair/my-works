# AWS provider variables
region  = "us-east-1"
#------------------------------------------------------------------------------------------------------------------------------#
# Tags for resources with Backup = True

default_tags = {
  ApplicationName      = "TimeOff"
  ManagedBy            = "MorningStar"
  Environment          = "test"
  CloudServiceProvider = "AWS"
  Availability         = "True"
}

#------------------------------------------------------------------------------------------------------------------------------#

# For data block
subnet = {
  private1    = "poc-subnet-private1"
  private2    = "poc-subnet-private2"
  public1     = "poc-subnet-public1"
  public2     = "poc-subnet-public2"
}

###ALB Sg
sg1_name_alb       = "lsg-hr-ac2-euwe01-psft-hra-wrapper-01"
sg_description_alb = "Security group for ALB"
siebel_trusted     = ["10.78.70.0/23", "10.78.72.0/23", "10.78.74.0/23"]
hr_trusted         = ["10.77.134.0/23", "10.77.136.0/23", "10.77.138.0/23"]

#### ALB -app
lb_name_alb                      = "alb-hr-ac2-euwe01-int-psft-01"
lb_name_hr_es_alb                = "alb-hr-ac2-euwe01-int-psft-02"
lb_name_digout_alb               = "alb-hr-ac2-euwe01-int-psft-03"
lb_name_ec_es_alb                = "alb-hr-ac2-euwe01-int-psft-04"
lb_name_cs_strip_alb             = "alb-hr-ac2-euwe01-int-psft-05"
lb_name_athomecs_alb             = "alb-hr-ac2-euwe01-int-psft-06"
lb_name_oehas_alb                = "alb-hr-ac2-euwe01-int-psft-07"
lb_name_hrtintcs_alb             = "alb-hr-ac2-euwe01-int-psft-08"
lb_name_fmiintcs_alb             = "alb-hr-ac2-euwe01-int-psft-09"
lb_name_authority_alb            = "alb-hr-ac2-euwe01-int-psft-10"
lb_name_employee_alb             = "alb-hr-ac2-euwe01-int-psft-11"
lb_name_hrmintcs_alb             = "alb-hr-ac2-euwe01-int-psft-12"
lb_name_levintcs_alb             = "alb-hr-ac2-euwe01-int-psft-13"
lb_name_imtechextcs_alb          = "alb-hr-ac2-euwe01-int-psft-14"
internal_alb                     = "true"
lb_type_alb                      = "application"
enable_deletion_protection_alb   = "true"
idle_timeout                     = "300"
acceslogs_prefix_alb             = "AC2/ALB-ECS"
acceslogs_prefix_hr_es_alb       = "AC2/hr-es"
acceslogs_prefix_digout_alb      = "AC2/digout"
acceslogs_prefix_ec_es_alb       = "AC2/ec-es"
acceslogs_prefix_cs_strip_alb    = "AC2/cs_strip"
acceslogs_prefix_athomecs_alb    = "AC2/athomecs"
acceslogs_prefix_oehas_alb       = "AC2/oehas"
acceslogs_prefix_hrtintcs_alb    = "AC2/hrtintcs"
acceslogs_prefix_fmiintcs_alb    = "AC2/fmiintcs"
acceslogs_prefix_authority_alb   = "AC2/authority"
acceslogs_prefix_employee_alb    = "AC2/employee"
acceslogs_prefix_hrmintcs_alb    = "AC2/hrmintcs"
acceslogs_prefix_levintcs_alb    = "AC2/levintcs"
acceslogs_prefix_imtechextcs_alb = "AC2/imtechextcs"
bucketname_logs                  = "s3b-hr-np-euwe01-log-psft-hra-wrapper-01"
enable_logs_alb                  = "true"

### ALB TG
tg_name_hr_as_alb        = "alt-hr-ac2-euwe01-psft-hr-as-01"
tg_name2_hr_as_alb       = "alt-hr-ac2-euwe01-psft-hr-as-02"
tg_name_hr_es_alb        = "alt-hr-ac2-euwe01-psft-hr-es-01"
tg_name2_hr_es_alb       = "alt-hr-ac2-euwe01-psft-hr-es-02"
tg_name_digout_alb       = "alt-hr-ac2-euwe01-psft-digout-01"
tg_name_ec_es_alb        = "alt-hr-ac2-euwe01-psft-cnt-es-01"
tg_name2_ec_es_alb       = "alt-hr-ac2-euwe01-psft-cnt-es-02"
tg_name_cs_strip_alb     = "alt-hr-ac2-euwe01-psft-ctstp-01"
tg_name2_cs_strip_alb    = "alt-hr-ac2-euwe01-psft-ctstp-02"
tg_name_athomecs_alb     = "alt-hr-ac2-euwe01-psft-athmcs-01"
tg_name_oehas_alb        = "alt-hr-ac2-euwe01-psft-oehas-01"
tg_name_hrtintcs_alb     = "alt-hr-ac2-euwe01-psft-hrtics-01"
tg_name2_hrtintcs_alb    = "alt-hr-ac2-euwe01-psft-hrtics-02"
tg_name_fmiintcs_alb     = "alt-hr-ac2-euwe01-psft-fmiics-01"
tg_name2_fmiintcs_alb    = "alt-hr-ac2-euwe01-psft-fmiics-02"
tg_name_authority_alb    = "alt-hr-ac2-euwe01-psft-authos-01"
tg_name2_authority_alb   = "alt-hr-ac2-euwe01-psft-authos-02"
tg_name_employee_alb     = "alt-hr-ac2-euwe01-psft-emplos-01"
tg_name2_employee_alb    = "alt-hr-ac2-euwe01-psft-emplos-02"
tg_name_hrmintcs_alb     = "alt-hr-ac2-euwe01-psft-hrmics-01"
tg_name2_hrmintcs_alb    = "alt-hr-ac2-euwe01-psft-hrmics-02"
tg_name_levintcs_alb     = "alt-hr-ac2-euwe01-psft-levics-01"
tg_name2_levintcs_alb    = "alt-hr-ac2-euwe01-psft-levics-02"
tg_name_imtechextcs_alb  = "alt-hr-ac2-euwe01-psft-imtecs-01"
tg_name2_imtechextcs_alb = "alt-hr-ac2-euwe01-psft-imtecs-02"

tg_port_alb     = "8080"
tg_protocol_alb = "HTTP"
t_type_alb      = "ip"
hc_path_alb     = "/actuator"
hc_protocol_alb = "HTTP"
hc_port_alb     = "8080"
hc_matcher_alb  = "200"

### ALB Listener 80
listener_port_alb_80       = "80"
listener_protocol_alb_HTTP = "HTTP"
listener_type_alb_forward  = "forward"

listener_type_alb_fixedresponse = "fixed-response"
listener_port_alb_443           = "443"
listener_protocol_alb_HTTPS     = "HTTPS"
sslpolicy_alb                   = "ELBSecurityPolicy-2016-08"

priority_hr_as         = "1"
path_pattern_hr_as     = ["/ws/HumanResourceAS/v002/*"]
priority_hr_es         = "1"
path_pattern_hr_es     = ["/ws/HumanResourceES/v004/*"]
priority_digout        = "1"
path_pattern_digout    = ["/ws/digOutHumanResourceService/v001*"]
priority_ec_es         = "1"
path_pattern_ec_es     = ["/ws/EmployeeContractES/v002/*"]
priority_cs_strip      = "1"
path_pattern_cs_strip  = ["/ws/ContractService-StripHR/v001/*"]
priority_athomecs      = "1"
path_pattern_athomecs  = ["/ws/AtHomeInternalCS/v002/*"]
priority_oehas         = "1"
path_pattern_oehas     = ["/ws/OrganizationEmployeeHierarchyService/v001/1.0/*"]
priority_hrtintcs      = "1"
path_pattern_hrtintcs  = ["/ws/HRTIntegrationCS/v001/1.1/*"]
priority_fmiintcs      = "1"
path_pattern_fmiintcs  = ["/ws/FMIInternalCS/v002/2.0/*"]
priority_authority     = "1"
path_pattern_authority = ["/ws/authorityService/v002/1.2/*"]
priority_employee      = "1"
path_pattern_employee  = ["/ws/EmployeeService/v001/1.0/*"]

### ECR
ecr_name             = "ecr-hr-np-euwe01-psft-hra-wrapper-01"
ecr_name_hr_as       = "ecr-hr-np-euwe01-psft-humanresource-as-01"
ecr_name_hr_es       = "ecr-hr-np-euwe01-psft-humanresource-es-01"
ecr_name_digout      = "ecr-hr-np-euwe01-psft-digout-hr-01"
ecr_name_ec_es       = "ecr-hr-np-euwe01-psft-employeecontract-es-01"
ecr_name_cs_strip    = "ecr-hr-np-euwe01-psft-contractservice-striphr-01"
ecr_name_athomecs    = "ecr-hr-np-euwe01-psft-athomecs-01"
ecr_name_oehas       = "ecr-hr-np-euwe01-psft-orgemphierarchyas-01"
ecr_name_hrtintcs    = "ecr-hr-np-euwe01-psft-hrtintegrationcs-01"
ecr_name_fmiintcs    = "ecr-hr-np-euwe01-psft-fmiinternalcs-01"
ecr_name_authority   = "ecr-hr-np-euwe01-psft-authorityservice-01"
ecr_name_employee    = "ecr-hr-np-euwe01-psft-employeeservice-01"
ecr_name_hrmintcs    = "ecr-hr-np-euwe01-psft-hrminternalcs-01"
ecr_name_levintcs    = "ecr-hr-np-euwe01-psft-levinternalcs-01"
ecr_name_imtechextcs = "ecr-hr-np-euwe01-psft-imtechexternalcs-01"

###Cluster
cluster_name = "ecf-hr-ac2-euwe01-psft-hra-wrapper-01"
ciname       = "containerInsights"
value        = "enabled"

###ECS
cname_hr_as       = "ctr-hr-ac2-euwe01-psft-humanresource-as-01"
cname_hr_es       = "ctr-hr-ac2-euwe01-psft-humanresource-es-01"
cname_digout      = "ctr-hr-ac2-euwe01-psft-digout-hr-01"
cname_ec_es       = "ctr-hr-ac2-euwe01-psft-employeecontract-es-01"
cname_cs_strip    = "ctr-hr-ac2-euwe01-psft-contractservice_striphr-01"
cname_athomecs    = "ctr-hr-ac2-euwe01-psft-athomecs-01"
cname_oehas       = "ctr-hr-ac2-euwe01-psft-orgemphierarchyas-01"
cname_hrtintcs    = "ctr-hr-ac2-euwe01-psft-hrtintegrationcs-01"
cname_fmiintcs    = "ctr-hr-ac2-euwe01-psft-fmiinternalcs-01"
cname_authority   = "ctr-hr-ac2-euwe01-psft-authorityservice-01"
cname_employee    = "ctr-hr-ac2-euwe01-psft-employeeservice-01"
cname_hrmintcs    = "ctr-hr-ac2-euwe01-psft-hrmintcs-01"
cname_levintcs    = "ctr-hr-ac2-euwe01-psft-levintcs-01"
cname_imtechextcs = "ctr-hr-ac2-euwe01-psft-imtechexternalcs-01"
portcontainer     = "8080"
cpucontainer      = "1"
memorycontainer   = "1024"
logs_hr_as        = "cwlg-hr-ac2-euwe01-psft-humanresource-as-01"
logs_hr_es        = "cwlg-hr-ac2-euwe01-psft-humanresource-es-01"
logs_digout       = "cwlg-hr-ac2-euwe01-psft-digout-hr-01"
logs_ec_es        = "cwlg-hr-ac2-euwe01-psft-employeecontract-es-01"
logs_cs_strip     = "cwlg-hr-ac2-euwe01-psft-contractservice_striphr-01"
logs_athomecs     = "cwlg-hr-ac2-euwe01-psft-athomecs-01"
logs_oehas        = "cwlg-hr-ac2-euwe01-psft-orgemphierarchyas-01"
logs_hrtintcs     = "cwlg-hr-ac2-euwe01-psft-hrtintegrationcs-01"
logs_fmiintcs     = "cwlg-hr-ac2-euwe01-psft-fmiinternalcs-01"
logs_authority    = "cwlg-hr-ac2-euwe01-psft-authorityservice-01"
logs_employee     = "cwlg-hr-ac2-euwe01-psft-employeeservice-01"
logs_hrmintcs     = "cwlg-hr-ac2-euwe01-psft-hrmintcs-01"
logs_levintcs     = "cwlg-hr-ac2-euwe01-psft-levintcs-01"
logs_imtechextcs  = "cwlg-hr-ac2-euwe01-psft-imtechexternalcs-01"

family_hr_as       = "ctd-hr-ac2-euwe01-psft-humanresource-as-01"
family_hr_es       = "ctd-hr-ac2-euwe01-psft-humanresource-es-01"
family_digout      = "ctd-hr-ac2-euwe01-psft-digout-hr-01"
family_ec_es       = "ctd-hr-ac2-euwe01-psft-employeecontract-es-01"
family_cs_strip    = "ctd-hr-ac2-euwe01-psft-contractservice_striphr-01"
family_athomecs    = "ctd-hr-ac2-euwe01-psft-athomecs-01"
family_oehas       = "ctd-hr-ac2-euwe01-psft-orgemphierarchyas-01"
family_hrtintcs    = "ctd-hr-ac2-euwe01-psft-hrtintegrationcs-01"
family_fmiintcs    = "ctd-hr-ac2-euwe01-psft-fmiinternalcs-01"
family_authority   = "ctd-hr-ac2-euwe01-psft-authorityservice-01"
family_employee    = "ctd-hr-ac2-euwe01-psft-employeeservice-01"
family_hrmintcs    = "ctd-hr-ac2-euwe01-psft-hrmintcs-01"
family_levintcs    = "ctd-hr-ac2-euwe01-psft-levintcs-01"
family_imtechextcs = "ctd-hr-ac2-euwe01-psft-imtechexternalcs-01"
req_comp           = ["FARGATE"]
cpu                = "512"
memory             = "1024"
nmode              = "awsvpc"

servicename_hr_as         = "ecs-hr-ac2-euwe01-psft-humanresource-as-01"
servicename_hr_es         = "ecs-hr-ac2-euwe01-psft-humanresource-es-01"
servicename_digout        = "ecs-hr-ac2-euwe01-psft-digout-hr-01"
servicename_ec_es         = "ecs-hr-ac2-euwe01-psft-employeecontract-es-01"
servicename_cs_strip      = "ecs-hr-ac2-euwe01-psft-contractservice-striphr-01"
servicename_athomecs      = "ecs-hr-ac2-euwe01-psft-athomecs-01"
servicename_oehas         = "ecs-hr-ac2-euwe01-psft-orgemphierarchyas-01"
servicename_hrtintcs      = "ecs-hr-ac2-euwe01-psft-hrtintegrationcs-01"
servicename_fmiintcs      = "ecs-hr-ac2-euwe01-psft-fmiinternalcs-01"
servicename_authority     = "ecs-hr-ac2-euwe01-psft-authorityservice-01"
servicename_employee      = "ecs-hr-ac2-euwe01-psft-employeeservice-01"
servicename_hrmintcs      = "ecs-hr-ac2-euwe01-psft-hrmintcs-01"
servicename_levintcs      = "ecs-hr-ac2-euwe01-psft-levintcs-01"
servicename_imtechextcs   = "ecs-hr-ac2-euwe01-psft-imtechexternalcs-01"
desired_count_hr_as       = "1"
desired_count_hr_es       = "1"
desired_count_digout      = "1"
desired_count_ec_es       = "1"
desired_count_cs_strip    = "1"
desired_count_athomecs    = "1"
desired_count_oehas       = "1"
desired_count_hrtintcs    = "1"
desired_count_fmiintcs    = "1"
desired_count_authority   = "1"
desired_count_employee    = "1"
desired_count_hrmintcs    = "1"
desired_count_levintcs    = "1"
desired_count_imtechextcs = "1"
grace_period              = "60"
assign_public_ip          = "false"
launch_type               = "FARGATE"
dc_type                   = "ECS"
dc_type_bg                = "CODE_DEPLOY"

max_capacity_hr_as       = "1"
min_capacity_hr_as       = "1"
max_capacity_hr_es       = "1"
min_capacity_hr_es       = "1"
max_capacity_digout      = "1"
min_capacity_digout      = "1"
max_capacity_ec_es       = "1"
min_capacity_ec_es       = "1"
max_capacity_cs_strip    = "2"
min_capacity_cs_strip    = "1"
max_capacity_athomecs    = "1"
min_capacity_athomecs    = "1"
max_capacity_oehas       = "2"
min_capacity_oehas       = "1"
max_capacity_hrtintcs    = "2"
min_capacity_hrtintcs    = "1"
max_capacity_fmiintcs    = "2"
min_capacity_fmiintcs    = "1"
max_capacity_authority   = "2"
min_capacity_authority   = "1"
max_capacity_employee    = "2"
min_capacity_employee    = "1"
max_capacity_hrmintcs    = "1"
min_capacity_hrmintcs    = "1"
max_capacity_levintcs    = "1"
min_capacity_levintcs    = "1"
max_capacity_imtechextcs = "1"
min_capacity_imtechextcs = "1"
scalable_dimension       = "ecs:service:DesiredCount"
service_namespace        = "ecs"

down_policy_name1                = "aspd-hr-ac2-euwe01-psft-hra-wrapper-01"
down_policy_name2                = "aspd-hr-ac2-euwe01-psft-hra-wrapper-02"
policy_type                      = "StepScaling"
adjustment_type                  = "ChangeInCapacity"
down_cooldown                    = "300"
down_metric_aggregation_type     = "Average"
down_metric_interval_upper_bound = "0"
down_scaling_adjustment          = "-1"
up_policy_name1                  = "aspu-hr-ac2-euwe01-psft-hra-wrapper-01"
up_policy_name2                  = "aspu-hr-ac2-euwe01-psft-hra-wrapper-02"
up_cooldown                      = "300"
up_metric_aggregation_type       = "Average"
# up_metric_interval_upper_bound_01 = "0"
# up_scaling_adjustment_02          = "1"
up_metric_interval_lower_bound_01 = "0"
up_scaling_adjustment_01          = "1"

sg_name_ecs        = "csg-hr-ac2-euwe01-psft-hra-wrapper-01"
sg_description_ecs = "Security group for ecs"
retention_ecs      = "7"

### ACM
domainname_pub_apg   = "api-psft-hr-athomecs-ac2.bpost.cloud"
sec_policy           = "TLS_1_2"
endpoint_type_domain = ["REGIONAL"]

### APG public
apg_name_pub        = "apg-hr-ac2-psft-athomecs-reg-01"
apg_description_pub = "Public API for psft athomecs AC2"
endpoint_pub        = ["REGIONAL"]
truststore_uri      = "s3://s3b-hr-np-euwe01-log-psft-hra-wrapper-01/configurations/AC2/bpostfirelayroot.pem"
stage_name_api      = "ac2"

### APG public usage plan
usage_plan_api_pub      = "apu-hr-ac2-euwe01-psft-athomecs-reg-01"
description_usp_api_pub = "Usage plan for psft athomecs Public api gateway"

### APG public key
key_name_sab        = "apk-hr-ac2-euwe01-psft-athomecs-reg-01"
key_value_sab       = "8hSFkkfXFk4f5ngDWNRN97AuWF8Hiwa08BrFLQLO"
description_key_sab = "API Key for SAB"
key_type            = "API_KEY"

### NLB TG
tg_name_nlb               = "nlt-hr-ac2-euwe01-psft-athmcs-01"
tg_port_nlb               = "8080"
tg_protocol_nlb           = "TCP"
t_type_nlb                = "ip"
deregistration_delay_nlb  = "90"
hc_port_nlb               = "8080"
hc_protocol_nlb           = "TCP"
stickiness_enabled_tg_nlb = false

### SSM
ssm_parameter_psft_un   = "prs-hr-ac2-euwe01-psft-username-01"
description_psft_un     = "PSFT Application Username"
parameter_value_psft_un = "HRA91_SQL_READ"

ssm_parameter_psft_pw   = "prs-hr-ac2-euwe01-psft-password-01"
description_psft_pw     = "PSFT Application Password"
parameter_value_psft_pw = "Read4uaT"

ssm_parameter_hrr_un   = "prs-hr-ac2-euwe01-hrr-username-01"
description_hrr_un     = "HRR DB Username"
parameter_value_hrr_un = "HRR_ESB"

ssm_parameter_hrr_pw   = "prs-hr-ac2-euwe01-hrr-password-01"
description_hrr_pw     = "HRR DB Password"
parameter_value_hrr_pw = "Szczec1n"

ssm_parameter_ci_un   = "prs-hr-ac2-euwe01-psftci-username-01"
description_ci_un     = "CI connection Username"
parameter_value_ci_un = "PS_IS_AC2"

ssm_parameter_ci_pw   = "prs-hr-ac2-euwe01-psftci-password-01"
description_ci_pw     = "CI connection Password"
parameter_value_ci_pw = "IServac2"

ssm_parameter_pla_un   = "prs-hr-ac2-euwe01-pla-username-01"
description_pla_un     = "PLA Username"
parameter_value_pla_un = "PLA_USER"

ssm_parameter_pla_pw   = "prs-hr-ac2-euwe01-pla-password-01"
description_pla_pw     = "PLA Password"
parameter_value_pla_pw = "PLA_U_A1"

ssm_parameter_ldap_un   = "prs-hr-ac2-euwe01-ldap-username-01"
description_ldap_un     = "ldap Username"
parameter_value_ldap_un = "SPC-00557"

ssm_parameter_ldap_pw   = "prs-hr-ac2-euwe01-ldap-password-01"
description_ldap_pw     = "ldap Password"
parameter_value_ldap_pw = "7fcQifXB8d"

ssm_parameter_sharepoint_un   = "prs-hr-ac2-euwe01-sharepoint-username-01"
description_sharepoint_un     = "Sharepoint Username"
parameter_value_sharepoint_un = "SVC-01038"

ssm_parameter_sharepoint_pw   = "prs-hr-ac2-euwe01-sharepoint-password-01"
description_sharepoint_pw     = "Sharepoint Password"
parameter_value_sharepoint_pw = "Ux7FX1fm"

alarm_mem_ecs1_50              = "cwa-hr-ac2-euwe01-psft-hra-wrapper-ecs1_MemoryUtilization_greater_than_50"
alarm_mem_ecs1_80              = "cwa-hr-ac2-euwe01-psft-hra-wrapper-ecs1_MemoryUtilization_greater_than_80"
alarm_cpu_ecs1_50              = "cwa-hr-ac2-euwe01-psft-hra-wrapper-ecs1_CPUUtilization_greater_than_50"
alarm_cpu_ecs1_80              = "cwa-hr-ac2-euwe01-psft-hra-wrapper-ecs1_CPUUtilization_greater_than_80"
alarm_mem_ecs2_50              = "cwa-hr-ac2-euwe01-psft-hra-wrapper-ecs2_MemoryUtilization_greater_than_50"
alarm_mem_ecs2_80              = "cwa-hr-ac2-euwe01-psft-hra-wrapper-ecs2_MemoryUtilization_greater_than_80"
alarm_cpu_ecs2_50              = "cwa-hr-ac2-euwe01-psft-hra-wrapper-ecs2_CPUUtilization_greater_than_50"
alarm_cpu_ecs2_80              = "cwa-hr-ac2-euwe01-psft-hra-wrapper-ecs2_CPUUtilization_greater_than_80"
comp_operator_ecs_80           = "GreaterThanOrEqualToThreshold"
comp_operator_ecs_50           = "LessThanOrEqualToThreshold"
matric_name_cpu_ecs            = "CPUUtilization"
matric_name_mem_ecs            = "MemoryUtilization"
namespace_ecs                  = "AWS/ECS"
evaluation_periods_ecs         = "2"
period_ecs                     = "120"
statistic_ecs                  = "Average"
threshold_ecs_80               = "80"
threshold_ecs_50               = "50"
alarm_description_cpu_up_ecs   = "CPUUtilization >= 80 for 2 datapoints within 4 minutes"
alarm_description_cpu_down_ecs = "CPUUtilization <= 50 for 2 datapoints within 4 minutes"
alarm_description_mem_up_ecs   = "MemoryUtilization >= 80 for 2 datapoints within 4 minutes"
alarm_description_mem_down_ecs = "MemoryUtilization <= 50 for 2 datapoints within 4 minutes"

metric_name_alb_healthy_host = "HealthyHostCount"
metric_name_alb_5xx          = "HTTPCode_Target_5XX_Count"
namespace_alb                = "AWS/ApplicationELB"

### Dashboard
dashboard_name     = "cdb-hr-ac2-euwe01-psft-humanresource-as-01"
dashboard_employee = "cdb-hr-ac2-euwe01-psft-employeeservice-01"

### Code deploy
codedeploy_app_platform = "ECS"
codedeploy_app_name     = "cda-hr-ac2-euwe01-psft-hra-wrapper-01"

codedeploy_dg_name        = "dpg-hr-ac2-euwe01-psft-humanresource-as-01"
codedeploy_dg_hr_es       = "dpg-hr-ac2-euwe01-psft-humanresource-es-01"
codedeploy_dg_ec_es       = "dpg-hr-ac2-euwe01-psft-employeecontract-es-01"
codedeploy_dg_cs_strip    = "dpg-hr-ac2-euwe01-psft-contractservice-striphr-01"
codedeploy_dg_hrtintcs    = "dpg-hr-ac2-euwe01-psft-hrtintegrationcs-01"
codedeploy_dg_authority   = "dpg-hr-ac2-euwe01-psft-authorityservice-01"
codedeploy_dg_fmiintcs    = "dpg-hr-ac2-euwe01-psft-fmiinternalcs-01"
codedeploy_dg_employee    = "dpg-hr-ac2-euwe01-psft-employeeservice-01"
codedeploy_dg_hrmintcs    = "dpg-hr-ac2-euwe01-psft-hrminternalcs-01"
codedeploy_dg_levintcs    = "dpg-hr-ac2-euwe01-psft-levinternalcs-01"
codedeploy_dg_imtechextcs = "dpg-hr-ac2-euwe01-psft-imtechexternalcs-01"
codedeploy_dc_name        = "CodeDeployDefault.ECSAllAtOnce"
codedeploy_events         = ["DEPLOYMENT_FAILURE"]
action_on_timeout         = "CONTINUE_DEPLOYMENT"
post_deployment_action    = "TERMINATE"
wait_time                 = "5"
deployment_option         = "WITH_TRAFFIC_CONTROL"
deployment_type           = "BLUE_GREEN"

###Code build
codebuild_athome_build  = "cdbbp-hr-np-euwe01-psft-athomecs-codebuild-01"
codebuild_athome_deploy = "cdbbp-hr-np-euwe01-psft-athomecs-codedeploy-01"
bucket_codepipeline     = "s3b-hr-np-euwe01-cfg-psft-hra-codepipeline-01"

### Code pipeline
codepipeline_athomecs  = "cdp-hr-ac2-euwe01-psft-athomecs-01"
repository_id_athomecs = "bpost_deliveryparcelsint/humanresource-athome"
output_source_athomecs = ["source_athomecs_output"]
input_build_athomecs   = ["source_athomecs_output"]
output_build_athomecs  = ["build_athomecs_output"]
input_deploy_athomecs  = ["build_athomecs_output"]
output_deploy_athomecs = ["deploy_athomecs_output"]
stage_approve          = "Approve-Deployment"
repo_uri_name          = "REPOSITORY_URI"
docker_name            = "DOCKER_FILE"
docker_value           = "Dockerfilenp"
env_name               = "ENVIRONMENT"
env_value              = "ac2"
task_def_name          = "TASK_DEFINITION"
cluster_name_env       = "CLUSTER_NAME"
service_name           = "SERVICE_NAME"