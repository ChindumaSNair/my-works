####SG-ALB
module "sg_alb" {
  source         = "./sg/sg-alb"
  vpc_id         = data.aws_vpc.vpc_id.id
  sg_name_alb    = var.sg1_name_alb
  sg_description = var.sg_description_alb
  siebel_trusted = var.siebel_trusted
  hr_trusted     = var.hr_trusted
  default_tags   = var.default_tags1
}

#### ALB- hr-as
module "alb_ecs" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
#### ALB-hr-es
module "alb_hr_es" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_hr_es_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_hr_es_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
#### ALB-digout
module "alb_digout" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_digout_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_digout_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
#### ALB-ec-es
module "alb_ec_es" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_ec_es_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_ec_es_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
#### ALB-cs_strip
module "alb_cs_strip" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_cs_strip_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_cs_strip_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
#### ALB-athomecs
module "alb_athomecs" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_athomecs_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_athomecs_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
### ALB-oehas
module "alb_oehas" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_oehas_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_oehas_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
#### ALB-hrtintcs
module "alb_hrtintcs" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_hrtintcs_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_hrtintcs_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
### ALB-fmiintcs
module "alb_fmiintcs" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_fmiintcs_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_fmiintcs_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
### ALB-authority
module "alb_authority" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_authority_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_authority_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
### ALB-employee
module "alb_employee" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_employee_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_employee_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
#### ALB- hrmintcs
module "alb_hrmintcs" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_hrmintcs_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_hrmintcs_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
#### ALB- levintcs
module "alb_levintcs" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_levintcs_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_levintcs_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}
#### ALB- imtechextcs
module "alb_imtechextcs" {
  source                     = "../../Modules/alb"
  lb_name                    = var.lb_name_imtechextcs_alb
  internal                   = var.internal_alb
  lb_type                    = var.lb_type_alb
  subnet_ids                 = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  enable_deletion_protection = var.enable_deletion_protection_alb
  idle_timeout               = var.idle_timeout
  default_tags               = var.default_tags1
  acceslogs_prefix           = var.acceslogs_prefix_imtechextcs_alb
  enable_logs                = var.enable_logs_alb
  bucket_logs                = var.bucketname_logs
  sg_id                      = [module.sg_alb.sg_id]
}

####ALB tg
module "alb_tg_hr_as" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_hr_as_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_hr_as" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_hr_as_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_hr_es" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_hr_es_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_hr_es" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_hr_es_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_digout" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_digout_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_ec_es" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_ec_es_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_ec_es" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_ec_es_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_cs_strip" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_cs_strip_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_cs_strip" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_cs_strip_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_athomecs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_athomecs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_oehas" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_oehas_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_hrtintcs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_hrtintcs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_hrtintcs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_hrtintcs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_fmiintcs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_fmiintcs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_fmiintcs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_fmiintcs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_authority" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_authority_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_authority" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_authority_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_employee" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_employee_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_employee" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_employee_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_hrmintcs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_hrmintcs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_hrmintcs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_hrmintcs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_levintcs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_levintcs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_levintcs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_levintcs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg_imtechextcs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name_imtechextcs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}
module "alb_tg2_imtechextcs" {
  source       = "../../Modules/alb-tg"
  vpc_id       = data.aws_vpc.vpc_id.id
  tg_name      = var.tg_name2_imtechextcs_alb
  tg_port      = var.tg_port_alb
  tg_protocol  = var.tg_protocol_alb
  t_type       = var.t_type_alb
  default_tags = var.default_tags1
  hc_path      = var.hc_path_alb
  hc_protocol  = var.hc_protocol_alb
  hc_port      = var.hc_port_alb
  hc_matcher   = var.hc_matcher_alb
}

###ALB listener hr-as
module "alb_listener_hr_as" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_ecs.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_hr_as.tg_arn
}
####ALB listener hr-es
module "alb_listener_hr_es" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_hr_es.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_hr_es.tg_arn
}
####ALB listener digout
module "alb_listener_digout" {
  source            = "../../Modules/alb-listener-443"
  lb_arn            = module.alb_digout.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb.arn
  listener_type     = var.listener_type_alb_fixedresponse
}
####ALB listener ec-es
module "alb_listener_ec_es" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_ec_es.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_ec_es.tg_arn
}
####ALB listener cs-strip
module "alb_listener_cs_strip" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_cs_strip.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_cs_strip.tg_arn
}
####ALB listener athomecs
module "alb_listener_athomecs" {
  source            = "../../Modules/alb-listener-443"
  lb_arn            = module.alb_athomecs.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb.arn
  listener_type     = var.listener_type_alb_fixedresponse
}
####ALB listener oehas
module "alb_listener_oehas" {
  source            = "../../Modules/alb-listener-443"
  lb_arn            = module.alb_oehas.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb1.arn
  listener_type     = var.listener_type_alb_fixedresponse
}
####ALB listener hrtintcs
module "alb_listener_hrtintcs" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_hrtintcs.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb1.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_hrtintcs.tg_arn
}
module "alb_listener_fmiintcs" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_fmiintcs.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb1.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_fmiintcs.tg_arn
}
###ALB listener authority
module "alb_listener_authority" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_authority.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb1.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_authority.tg_arn
}

###ALB listener fmiintcs
module "alb_listener_employee" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_employee.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb1.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_employee.tg_arn
}
module "alb_listener_hrmintcs" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_hrmintcs.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb2.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_hrmintcs.tg_arn
}
module "alb_listener_levintcs" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_levintcs.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb3.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_levintcs.tg_arn
}
module "alb_listener_imtechextcs" {
  source            = "../../Modules/alb-listener-443-forward"
  lb_arn            = module.alb_imtechextcs.alb_arn
  listener_port     = var.listener_port_alb_443
  listener_protocol = var.listener_protocol_alb_HTTPS
  sslpolicy         = var.sslpolicy_alb
  certarn           = data.aws_acm_certificate.cert_alb4.arn
  listener_type     = var.listener_type_alb_forward
  tg_arn            = module.alb_tg_imtechextcs.tg_arn
}

module "alb_listener_rule_digout" {
  source        = "../../Modules/alb-listener-rule"
  listener_arn  = module.alb_listener_digout.arn
  priority      = var.priority_digout
  listener_type = var.listener_type_alb_forward
  tg_arn        = module.alb_tg_digout.tg_arn
  path_pattern  = var.path_pattern_digout
}
module "alb_listener_rule_athomecs" {
  source        = "../../Modules/alb-listener-rule"
  listener_arn  = module.alb_listener_athomecs.arn
  priority      = var.priority_athomecs
  listener_type = var.listener_type_alb_forward
  tg_arn        = module.alb_tg_athomecs.tg_arn
  path_pattern  = var.path_pattern_athomecs
}
module "alb_listener_rule_oehas" {
  source        = "../../Modules/alb-listener-rule"
  listener_arn  = module.alb_listener_oehas.arn
  priority      = var.priority_oehas
  listener_type = var.listener_type_alb_forward
  tg_arn        = module.alb_tg_oehas.tg_arn
  path_pattern  = var.path_pattern_oehas
}

####SG-JMS
module "sg_ecs" {
  source         = "../../Modules/sg/sg-ecs"
  vpc_id         = data.aws_vpc.vpc_id.id
  sg_name        = var.sg_name_ecs
  sg_description = var.sg_description_ecs
  alb_sg_id      = [module.sg_alb.sg_id]
  default_tags   = var.default_tags1
}

####Cluster1
module "Cluster1" {
  source       = "../../Modules/cluster"
  name         = var.cluster_name
  ciname       = var.ciname
  value        = var.value
  default_tags = var.default_tags1
}

####ECS_hr_as
module "ECS_hr_as" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_hr_as.rendered
  logs                              = var.logs_hr_as
  retention                         = var.retention_ecs
  family                            = var.family_hr_as
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_hr_as
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_hr_as
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_hr_as
  min_capacity                      = var.min_capacity_hr_as
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_hr_as.tg_arn
  tg_arn1                           = module.alb_tg_hr_as.tg_arn
  cname                             = var.cname_hr_as
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}

####ECS_hr_es
module "ECS_hr_es" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_hr_es.rendered
  logs                              = var.logs_hr_es
  retention                         = var.retention_ecs
  family                            = var.family_hr_es
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_hr_es
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_hr_es
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_hr_es
  min_capacity                      = var.min_capacity_hr_es
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_hr_es.tg_arn
  tg_arn1                           = module.alb_tg_hr_es.tg_arn
  cname                             = var.cname_hr_es
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}

####ECS_digout
module "ECS_digout" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_digout.rendered
  logs                              = var.logs_digout
  retention                         = var.retention_ecs
  family                            = var.family_digout
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_digout
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_digout
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type
  max_capacity                      = var.max_capacity_digout
  min_capacity                      = var.min_capacity_digout
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_digout.tg_arn
  tg_arn1                           = module.alb_tg_digout.tg_arn
  cname                             = var.cname_digout
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}
####ECS_ecs_es
module "ECS_ec_es" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_ec_es.rendered
  logs                              = var.logs_ec_es
  retention                         = var.retention_ecs
  family                            = var.family_ec_es
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_ec_es
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_ec_es
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_ec_es
  min_capacity                      = var.min_capacity_ec_es
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_ec_es.tg_arn
  tg_arn1                           = module.alb_tg_ec_es.tg_arn
  cname                             = var.cname_ec_es
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}
####ECS_cs_strip
module "ECS_cs_strip" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_cs_strip.rendered
  logs                              = var.logs_cs_strip
  retention                         = var.retention_ecs
  family                            = var.family_cs_strip
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_cs_strip
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_cs_strip
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_cs_strip
  min_capacity                      = var.min_capacity_cs_strip
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_cs_strip.tg_arn
  tg_arn1                           = module.alb_tg_cs_strip.tg_arn
  cname                             = var.cname_cs_strip
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}

### ACM for Public api gateway
module "acm_api" {
  source       = "../../Modules/acm"
  default_tags = var.default_tags1
  domainname   = var.domainname_pub_apg
}
## APG public
module "apg_pub" {
  source          = "../../Modules/api-public"
  default_tags    = var.default_tags1
  apg_name        = var.apg_name_pub
  apg_description = var.apg_description_pub
  endpoint_pub    = var.endpoint_pub
  apg_body        = data.template_file.api_pub.rendered
  #binary_media_types                  = var.binary_media_types
  stage_name = var.stage_name_api
}
### APG public method settings
module "method_settings_api_pub" {
  source     = "../../Modules/apg-method-settings"
  api_id     = module.apg_pub.api_id
  stage_name = var.stage_name_api
}
## APG custom doamin-mapping
module "custom_domain_mapping_api_pub" {
  source         = "../../Modules/apg-custom-domain-mapping"
  default_tags   = var.default_tags1
  domain_name    = var.domainname_pub_apg
  cert_arn       = module.acm_api.cert_arn
  sec_policy     = var.sec_policy
  endpoint_type  = var.endpoint_type_domain
  truststore_uri = var.truststore_uri
  rest_api_id    = module.apg_pub.api_id
  stage_name     = var.stage_name_api
}

# ### APG public usage plan
# module "usage_plan_api_pub" {
#   source       = "../../Modules/usage_plan"
#   usage_plan   = var.usage_plan_api_pub
#   description  = var.description_usp_api_pub
#   default_tags = var.default_tags1
#   api_id       = module.apg_pub.api_id
#   stage_name   = var.stage_name_api
# }

# ### APG public key sab
# module "api_pub_key_sab" {
#   source          = "../../Modules/api-key"
#   key_name        = var.key_name_sab
#   key_value       = var.key_value_sab
#   description_key = var.description_key_sab
#   default_tags    = var.default_tags1
#   key_type        = var.key_type
#   usage_plan_id   = module.usage_plan_api_pub.usage_plan_id
# }

####NLB tg
module "nlb_tg" {
  source               = "../../Modules/nlb-tg"
  vpc_id               = data.aws_vpc.vpc_id.id
  tg_name              = var.tg_name_nlb
  tg_port              = var.tg_port_nlb
  tg_protocol          = var.tg_protocol_nlb
  t_type               = var.t_type_nlb
  deregistration_delay = var.deregistration_delay_nlb
  default_tags         = var.default_tags1
  hc_port              = var.hc_port_nlb
  hc_protocol          = var.hc_protocol_nlb
  stickiness_enabled   = var.stickiness_enabled_tg_nlb
}

####ECS_athomecs
module "ECS_athomecs" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_athomecs.rendered
  logs                              = var.logs_athomecs
  retention                         = var.retention_ecs
  family                            = var.family_athomecs
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_athomecs
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_athomecs
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type
  max_capacity                      = var.max_capacity_athomecs
  min_capacity                      = var.min_capacity_athomecs
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_athomecs.tg_arn
  tg_arn1                           = module.nlb_tg.tg_arn
  cname                             = var.cname_athomecs
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}
####ECS_oehas
module "ECS_oehas" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_oehas.rendered
  logs                              = var.logs_oehas
  retention                         = var.retention_ecs
  family                            = var.family_oehas
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_oehas
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_oehas
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type
  max_capacity                      = var.max_capacity_oehas
  min_capacity                      = var.min_capacity_oehas
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_oehas.tg_arn
  tg_arn1                           = module.alb_tg_oehas.tg_arn
  cname                             = var.cname_oehas
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}
####ECS_hrtintcs
module "ECS_hrtintcs" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_hrtintcs.rendered
  logs                              = var.logs_hrtintcs
  retention                         = var.retention_ecs
  family                            = var.family_hrtintcs
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_hrtintcs
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_hrtintcs
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_hrtintcs
  min_capacity                      = var.min_capacity_hrtintcs
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_hrtintcs.tg_arn
  tg_arn1                           = module.alb_tg_hrtintcs.tg_arn
  cname                             = var.cname_hrtintcs
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}
####ECS_fmiintcs
module "ECS_fmiintcs" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_fmiintcs.rendered
  logs                              = var.logs_fmiintcs
  retention                         = var.retention_ecs
  family                            = var.family_fmiintcs
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_fmiintcs
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_fmiintcs
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_fmiintcs
  min_capacity                      = var.min_capacity_fmiintcs
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_fmiintcs.tg_arn
  tg_arn1                           = module.alb_tg_fmiintcs.tg_arn
  cname                             = var.cname_fmiintcs
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}
####ECS_authority
module "ECS_authority" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_authority.rendered
  logs                              = var.logs_authority
  retention                         = var.retention_ecs
  family                            = var.family_authority
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_authority
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_authority
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_authority
  min_capacity                      = var.min_capacity_authority
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_authority.tg_arn
  tg_arn1                           = module.alb_tg_authority.tg_arn
  cname                             = var.cname_authority
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}
####ECS_employee
module "ECS_employee" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_employee.rendered
  logs                              = var.logs_employee
  retention                         = var.retention_ecs
  family                            = var.family_employee
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_employee
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_employee
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_employee
  min_capacity                      = var.min_capacity_employee
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_employee.tg_arn
  tg_arn1                           = module.alb_tg_employee.tg_arn
  cname                             = var.cname_employee
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}

####ECS_hrmintcs
module "ECS_hrmintcs" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_hrmintcs.rendered
  logs                              = var.logs_hrmintcs
  retention                         = var.retention_ecs
  family                            = var.family_hrmintcs
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_hrmintcs
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_hrmintcs
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_hrmintcs
  min_capacity                      = var.min_capacity_hrmintcs
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_hrmintcs.tg_arn
  tg_arn1                           = module.alb_tg_hrmintcs.tg_arn
  cname                             = var.cname_hrmintcs
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}

####ECS_levintcs
module "ECS_levintcs" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_levintcs.rendered
  logs                              = var.logs_levintcs
  retention                         = var.retention_ecs
  family                            = var.family_levintcs
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_levintcs
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_levintcs
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_levintcs
  min_capacity                      = var.min_capacity_levintcs
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_levintcs.tg_arn
  tg_arn1                           = module.alb_tg_levintcs.tg_arn
  cname                             = var.cname_levintcs
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}

####ECS_imtechextcs
module "ECS_imtechextcs" {
  source                            = "../../Modules/ecs"
  default_tags                      = var.default_tags
  default_tags1                     = var.default_tags1
  template                          = data.template_file.policy_imtechextcs.rendered
  logs                              = var.logs_imtechextcs
  retention                         = var.retention_ecs
  family                            = var.family_imtechextcs
  req_comp                          = var.req_comp
  cpu                               = var.cpu
  memory                            = var.memory
  exe_role_arn                      = data.aws_iam_role.ecsTaskExecutionRole.arn
  nmode                             = var.nmode
  servicename                       = var.servicename_imtechextcs
  clusterid                         = module.Cluster1.clusterid
  desired_count                     = var.desired_count_imtechextcs
  grace_period                      = var.grace_period
  subnet_ids                        = [data.aws_subnet.trusted1.id, data.aws_subnet.trusted2.id]
  assign_public_ip                  = var.assign_public_ip
  launch_type                       = var.launch_type
  dc_type                           = var.dc_type_bg
  max_capacity                      = var.max_capacity_imtechextcs
  min_capacity                      = var.min_capacity_imtechextcs
  clustername                       = module.Cluster1.clustername
  ecs_iam_role                      = data.aws_iam_role.ecsIamRole.arn
  scalable_dimension                = var.scalable_dimension
  service_namespace                 = var.service_namespace
  sg_id                             = module.sg_ecs.sg_id
  tg_arn                            = module.alb_tg_imtechextcs.tg_arn
  tg_arn1                           = module.alb_tg_imtechextcs.tg_arn
  cname                             = var.cname_imtechextcs
  cport                             = var.portcontainer
  down_policy_name1                 = var.down_policy_name1
  down_policy_name2                 = var.down_policy_name2
  policy_type                       = var.policy_type
  adjustment_type                   = var.adjustment_type
  down_cooldown                     = var.down_cooldown
  down_metric_aggregation_type      = var.down_metric_aggregation_type
  down_metric_interval_upper_bound  = var.down_metric_interval_upper_bound
  down_scaling_adjustment           = var.down_scaling_adjustment
  up_policy_name1                   = var.up_policy_name1
  up_policy_name2                   = var.up_policy_name2
  up_cooldown                       = var.up_cooldown
  up_metric_aggregation_type        = var.up_metric_aggregation_type
  up_metric_interval_lower_bound_01 = var.up_metric_interval_lower_bound_01
  up_scaling_adjustment_01          = var.up_scaling_adjustment_01
  # up_metric_interval_lower_bound_02 = var.up_metric_interval_lower_bound_02
  # up_scaling_adjustment_02          = var.up_scaling_adjustment_02
}

/*
### ECS alarm
module "ecs1_cwa_cpu_80" {
  source                             = "../../Modules/cloudwatch_alarm"
  default_tags                       = var.default_tags1
  alarm_name                         = var.alarm_cpu_ecs1_80
  comparison_operator                = var.comp_operator_ecs_80
  evaluation_periods                 = var.evaluation_periods_ecs
  metric_name                        = var.matric_name_cpu_ecs
  namespace                          = var.namespace_ecs
  period                             = var.period_ecs
  statistic                          = var.statistic_ecs
  threshold                          = var.threshold_ecs_80
  alarm_description                  = var.alarm_description_cpu_up_ecs
  dimension                          = {
    ClusterName                      = var.cluster_name
    ServiceName                      = var.servicename1
  }
  alarms_actions                     = module.ECS1.scale_policy_cpu_up_arn
}
module "ecs1_cwa_cpu_50" {
  source                             = "../../Modules/cloudwatch_alarm"
  default_tags                       = var.default_tags1
  alarm_name                         = var.alarm_cpu_ecs1_50 
  comparison_operator                = var.comp_operator_ecs_50
  evaluation_periods                 = var.evaluation_periods_ecs
  metric_name                        = var.matric_name_cpu_ecs
  namespace                          = var.namespace_ecs
  period                             = var.period_ecs
  statistic                          = var.statistic_ecs
  threshold                          = var.threshold_ecs_50
  alarm_description                  = var.alarm_description_cpu_down_ecs
  dimension                          = {
    ClusterName                      = var.cluster_name
    ServiceName                      = var.servicename1
  }
  alarms_actions                     = module.ECS1.scale_policy_cpu_down_arn
}
module "ecs1_cwa_mem_80" {
  source                             = "../../Modules/cloudwatch_alarm"
  default_tags                       = var.default_tags1
  alarm_name                         = var.alarm_mem_ecs1_80 
  comparison_operator                = var.comp_operator_ecs_80
  evaluation_periods                 = var.evaluation_periods_ecs
  metric_name                        = var.matric_name_mem_ecs
  namespace                          = var.namespace_ecs
  period                             = var.period_ecs
  statistic                          = var.statistic_ecs
  threshold                          = var.threshold_ecs_80
  alarm_description                  = var.alarm_description_mem_up_ecs
  dimension                          = {
    ClusterName                      = var.cluster_name
    ServiceName                      = var.servicename1
  }
  alarms_actions                     = module.ECS1.scale_policy_mem_up_arn
}
module "ecs1_cwa_mem_50" {
  source                             = "../../Modules/cloudwatch_alarm"
  default_tags                       = var.default_tags1
  alarm_name                         = var.alarm_mem_ecs1_50 
  comparison_operator                = var.comp_operator_ecs_50
  evaluation_periods                 = var.evaluation_periods_ecs
  metric_name                        = var.matric_name_mem_ecs
  namespace                          = var.namespace_ecs
  period                             = var.period_ecs
  statistic                          = var.statistic_ecs
  threshold                          = var.threshold_ecs_50
  alarm_description                  = var.alarm_description_mem_down_ecs
  dimension                          = {
    ClusterName                      = var.cluster_name
    ServiceName                      = var.servicename1
  }
  alarms_actions                     = module.ECS1.scale_policy_mem_down_arn
}

module "ecs2_cwa_cpu_80" {
  source                             = "../../Modules/cloudwatch_alarm"
  default_tags                       = var.default_tags1
  alarm_name                         = var.alarm_cpu_ecs2_80
  comparison_operator                = var.comp_operator_ecs_80
  evaluation_periods                 = var.evaluation_periods_ecs
  metric_name                        = var.matric_name_cpu_ecs
  namespace                          = var.namespace_ecs
  period                             = var.period_ecs
  statistic                          = var.statistic_ecs
  threshold                          = var.threshold_ecs_80
  alarm_description                  = var.alarm_description_cpu_up_ecs
  dimension                          = {
    ClusterName                      = var.cluster_name
    ServiceName                      = var.servicename2
  }
  alarms_actions                     = module.ECS2.scale_policy_cpu_up_arn
}
module "ecs2_cwa_cpu_50" {
  source                             = "../../Modules/cloudwatch_alarm"
  default_tags                       = var.default_tags1
  alarm_name                         = var.alarm_cpu_ecs2_50 
  comparison_operator                = var.comp_operator_ecs_50
  evaluation_periods                 = var.evaluation_periods_ecs
  metric_name                        = var.matric_name_cpu_ecs
  namespace                          = var.namespace_ecs
  period                             = var.period_ecs
  statistic                          = var.statistic_ecs
  threshold                          = var.threshold_ecs_50
  alarm_description                  = var.alarm_description_cpu_down_ecs
  dimension                          = {
    ClusterName                      = var.cluster_name
    ServiceName                      = var.servicename2
  }
  alarms_actions                     = module.ECS2.scale_policy_cpu_down_arn
}
module "ecs2_cwa_mem_80" {
  source                             = "../../Modules/cloudwatch_alarm"
  default_tags                       = var.default_tags1
  alarm_name                         = var.alarm_mem_ecs2_80 
  comparison_operator                = var.comp_operator_ecs_80
  evaluation_periods                 = var.evaluation_periods_ecs
  metric_name                        = var.matric_name_mem_ecs
  namespace                          = var.namespace_ecs
  period                             = var.period_ecs
  statistic                          = var.statistic_ecs
  threshold                          = var.threshold_ecs_80
  alarm_description                  = var.alarm_description_mem_up_ecs
  dimension                          = {
    ClusterName                      = var.cluster_name
    ServiceName                      = var.servicename2
  }
  alarms_actions                     = module.ECS2.scale_policy_mem_up_arn
}
module "ecs2_cwa_mem_50" {
  source                             = "../../Modules/cloudwatch_alarm"
  default_tags                       = var.default_tags1
  alarm_name                         = var.alarm_mem_ecs2_50 
  comparison_operator                = var.comp_operator_ecs_50
  evaluation_periods                 = var.evaluation_periods_ecs
  metric_name                        = var.matric_name_mem_ecs
  namespace                          = var.namespace_ecs
  period                             = var.period_ecs
  statistic                          = var.statistic_ecs
  threshold                          = var.threshold_ecs_50
  alarm_description                  = var.alarm_description_mem_down_ecs
  dimension                          = {
    ClusterName                      = var.cluster_name
    ServiceName                      = var.servicename2
  }
  alarms_actions                     = module.ECS2.scale_policy_mem_down_arn
}
*/
### SSM
module "ssm_psft_un" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_psft_un
  description     = var.description_psft_un
  parameter_value = var.parameter_value_psft_un
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_psft_pw" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_psft_pw
  description     = var.description_psft_pw
  parameter_value = var.parameter_value_psft_pw
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_hrr_un" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_hrr_un
  description     = var.description_hrr_un
  parameter_value = var.parameter_value_hrr_un
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_hrr_pw" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_hrr_pw
  description     = var.description_hrr_pw
  parameter_value = var.parameter_value_hrr_pw
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_ci_un" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_ci_un
  description     = var.description_ci_un
  parameter_value = var.parameter_value_ci_un
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_ci_pw" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_ci_pw
  description     = var.description_ci_pw
  parameter_value = var.parameter_value_ci_pw
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_pla_un" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_pla_un
  description     = var.description_pla_un
  parameter_value = var.parameter_value_pla_un
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_pla_pw" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_pla_pw
  description     = var.description_pla_pw
  parameter_value = var.parameter_value_pla_pw
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_ldap_un" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_ldap_un
  description     = var.description_ldap_un
  parameter_value = var.parameter_value_ldap_un
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_ldap_pw" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_ldap_pw
  description     = var.description_ldap_pw
  parameter_value = var.parameter_value_ldap_pw
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_sharepoint_un" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_sharepoint_un
  description     = var.description_sharepoint_un
  parameter_value = var.parameter_value_sharepoint_un
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

module "ssm_sharepoint_pw" {
  source          = "../../Modules/ssm-parameter"
  default_tags    = var.default_tags1
  ssm_parameter   = var.ssm_parameter_sharepoint_pw
  description     = var.description_sharepoint_pw
  parameter_value = var.parameter_value_sharepoint_pw
  kms_parameter   = data.aws_kms_key.kms_psft.arn
}

####Cloudwatch Dashboard
module "dashboard" {
  source = "../../Modules/cw_dashboard"
  name   = var.dashboard_name
  body   = data.template_file.dashboard.rendered
}
module "dashboard_employee" {
  source = "../../Modules/cw_dashboard"
  name   = var.dashboard_employee
  body   = data.template_file.dashboard_employee.rendered
}

module codedeploy_app_hr_as {
  source       = "../../Modules/code_deploy/application"
  default_tags = var.default_tags1
  platform     = var.codedeploy_app_platform
  name         = var.codedeploy_app_name
}

module codedeploy_dg_hr_as {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_name
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_hr_as
  listener_arn      = module.alb_listener_hr_as.arn
  tg_blue_name      = var.tg_name_hr_as_alb
  tg_green_name     = var.tg_name2_hr_as_alb
}
module codedeploy_dg_hr_es {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_hr_es
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_hr_es
  listener_arn      = module.alb_listener_hr_es.arn
  tg_blue_name      = var.tg_name_hr_es_alb
  tg_green_name     = var.tg_name2_hr_es_alb
}
module codedeploy_dg_ec_es {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_ec_es
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_ec_es
  listener_arn      = module.alb_listener_ec_es.arn
  tg_blue_name      = var.tg_name_ec_es_alb
  tg_green_name     = var.tg_name2_ec_es_alb
}
module codedeploy_dg_cs_strip {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_cs_strip
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_cs_strip
  listener_arn      = module.alb_listener_cs_strip.arn
  tg_blue_name      = var.tg_name_cs_strip_alb
  tg_green_name     = var.tg_name2_cs_strip_alb
}
module codedeploy_dg_hrtintcs {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_hrtintcs
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_hrtintcs
  listener_arn      = module.alb_listener_hrtintcs.arn
  tg_blue_name      = var.tg_name_hrtintcs_alb
  tg_green_name     = var.tg_name2_hrtintcs_alb
}
module codedeploy_dg_fmiintcs {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_fmiintcs
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_fmiintcs
  listener_arn      = module.alb_listener_fmiintcs.arn
  tg_blue_name      = var.tg_name_fmiintcs_alb
  tg_green_name     = var.tg_name2_fmiintcs_alb
}
module codedeploy_dg_authority {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_authority
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_authority
  listener_arn      = module.alb_listener_authority.arn
  tg_blue_name      = var.tg_name_authority_alb
  tg_green_name     = var.tg_name2_authority_alb
}
module codedeploy_dg_employee {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_employee
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_employee
  listener_arn      = module.alb_listener_employee.arn
  tg_blue_name      = var.tg_name_employee_alb
  tg_green_name     = var.tg_name2_employee_alb
}
module codedeploy_dg_hrmintcs {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_hrmintcs
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_hrmintcs
  listener_arn      = module.alb_listener_hrmintcs.arn
  tg_blue_name      = var.tg_name_hrmintcs_alb
  tg_green_name     = var.tg_name2_hrmintcs_alb
}
module codedeploy_dg_levintcs {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_levintcs
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_levintcs
  listener_arn      = module.alb_listener_levintcs.arn
  tg_blue_name      = var.tg_name_levintcs_alb
  tg_green_name     = var.tg_name2_levintcs_alb
}
module codedeploy_dg_imtechextcs {
  source            = "../../Modules/code_deploy/deployment_group"
  default_tags      = var.default_tags1
  app_name          = var.codedeploy_app_name
  dg_name           = var.codedeploy_dg_imtechextcs
  dc_name           = var.codedeploy_dc_name
  role_arn          = data.aws_iam_role.codedeploy_role.arn
  events            = var.codedeploy_events
  action_on_timeout = var.action_on_timeout
  action            = var.post_deployment_action
  wait_time         = var.wait_time
  deployment_option = var.deployment_option
  deployment_type   = var.deployment_type
  cluster_name      = var.cluster_name
  service_name      = var.servicename_imtechextcs
  listener_arn      = module.alb_listener_imtechextcs.arn
  tg_blue_name      = var.tg_name_imtechextcs_alb
  tg_green_name     = var.tg_name2_imtechextcs_alb
}

### codepipeline
module "codepipeline_athomecs" {
  source              = "../../modules/code_pipeline/codepipeline_athome"
  name                = var.codepipeline_athomecs
  role_arn            = data.aws_iam_role.codepipeline_role.arn
  bucket_name         = var.bucket_codepipeline
  connection_arn      = data.aws_codestarconnections_connection.psft.arn
  repository_id       = var.repository_id_athomecs
  project_name_build  = var.codebuild_athome_build
  project_name_deploy = var.codebuild_athome_deploy
  output_source_art   = var.output_source_athomecs
  input_build_art     = var.input_build_athomecs
  output_build_art    = var.output_build_athomecs
  stage_approve       = var.stage_approve
  input_deploy_art    = var.input_deploy_athomecs
  output_deploy_art   = var.output_deploy_athomecs
  repo_uri_name       = var.repo_uri_name
  repo_uri_value      = data.aws_ecr_repository.athomecs.repository_url
  docker_name         = var.docker_name
  docker_value        = var.docker_value
  env_name            = var.env_name
  env_value           = var.env_value
  task_def_name       = var.task_def_name
  task_def_value      = var.family_athomecs
  cluster_name        = var.cluster_name_env
  cluster_value       = var.cluster_name
  service_name        = var.service_name
  service_value       = var.servicename_athomecs
  default_tags        = var.default_tags1
}