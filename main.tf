module "network" {
    source  = "./modules/network"
}

module "compute" {
    source  = "./modules/ecs"  
    vpc_output = module.network.vpc_output
    huaweicloud_vpc_subnet = module.network.huaweicloud_vpc_subnet
}