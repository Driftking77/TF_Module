module "rg" {
  source = "../TF Code/ResourceGroup"
  rgs    = var.rgs
}
module "vnet" {
  source  = "../TF Code/VirtualNetwork"
  vnets   = var.vnets
  subnets = var.subnets
}
module "nsg" {
    source = "../TF Code/NetworkSecurityGroup"
    depends_on = [ module.vnet ]
    nsg = var.nsg
    rule = var.rule
  
}
module "key" {
  source = "../TF Code/KeyValut"
  key =var.key
  
}
# module "nic" {
#     source = "../TF Code/NetworkInterface"
#     nics =var.nics
#     card =var.card
#     subnetdata=var.subnetdata
#     }
    
 