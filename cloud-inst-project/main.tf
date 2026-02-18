module "vpc" {
  source  = "./modules/vpc"
  project = var.project
}

module "security_group" {
  source  = "./modules/security_group"
  project = var.project
  vpc_id  = module.vpc.vpc_id
}

module "ec2" {
  source        = "./modules/ec2"
  project       = var.project
  ami           = var.ami
  instance_type = var.instance_type
  sg_id         = module.security_group.sg_id
  subnet_id     = module.vpc.public_subnets[0]
}


module "s3" {
  source  = "./modules/s3"
  project = var.project
}

# module "rds" {
#   source             = "./modules/rds"
#   project            = var.project
#   db_user            = var.db_user
#   db_pass            = var.db_pass
#   sg_id              = module.security_group.sg_id
#   private_subnet_ids = module.vpc.private_subnets
# }


module "dynamodb" {
  source  = "./modules/dynamodb"
  project = var.project
}

module "lambda" {
  source          = "./modules/lambda"
  project         = var.project
  lambda_zip_path = var.lambda_zip_path
}

module "route53" {
  source  = "./modules/route53"
  project = var.project
  domain  = var.domain
}

module "alb" {
  source  = "./modules/alb"
  project = var.project
  sg_id   = module.security_group.sg_id
  subnets   = module.vpc.public_subnets

}

module "cloudwatch" {
  source  = "./modules/cloudwatch"
  project = var.project
}

module "iam" {
  source  = "./modules/iam"
  project = var.project
}

module "kms" {
  source  = "./modules/kms"
  project = var.project
}

module "efs" {
  source  = "./modules/efs"
  project = var.project
  vpc_id  = module.vpc.vpc_id
}

module "ebs" {
  source  = "./modules/ebs"
  project = var.project
}

module "sns" {
  source  = "./modules/sns"
  project = var.project
}
