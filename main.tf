locals {
  ec2_local_gateway_route_tables = { for k1, v1 in var.ec2_local_gateway_route_tables : k1 => { local_gateway_id = v1.local_gateway_id, mode = v1.mode, region = v1.region, tags = v1.tags } }

  ec2_local_gateway_routes = merge([
    for k1, v1 in var.ec2_local_gateway_route_tables : {
      for k2, v2 in coalesce(v1.ec2_local_gateway_routes, {}) :
      "${k1}/${k2}" => merge(v2, {
        local_gateway_route_table_id = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_id["${k1}"]
      })
    }
  ]...)

  ec2_local_gateway_route_table_virtual_interface_group_associations = merge([
    for k1, v1 in var.ec2_local_gateway_route_tables : {
      for k2, v2 in coalesce(v1.ec2_local_gateway_route_table_virtual_interface_group_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        local_gateway_route_table_id = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_id["${k1}"]
      })
    }
  ]...)

  ec2_local_gateway_route_table_vpc_associations = merge([
    for k1, v1 in var.ec2_local_gateway_route_tables : {
      for k2, v2 in coalesce(v1.ec2_local_gateway_route_table_vpc_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        local_gateway_route_table_id = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_id["${k1}"]
      })
    }
  ]...)
}

module "ec2_local_gateway_route_tables" {
  source                         = "git::https://github.com/AeternaModules/aws_ec2_local_gateway_route_table.git?ref=v6.58.0"
  ec2_local_gateway_route_tables = local.ec2_local_gateway_route_tables
}

module "ec2_local_gateway_routes" {
  source                   = "git::https://github.com/AeternaModules/aws_ec2_local_gateway_route.git?ref=v6.58.0"
  ec2_local_gateway_routes = local.ec2_local_gateway_routes
  depends_on               = [module.ec2_local_gateway_route_tables]
}

module "ec2_local_gateway_route_table_virtual_interface_group_associations" {
  source                                                             = "git::https://github.com/AeternaModules/aws_ec2_local_gateway_route_table_virtual_interface_group_association.git?ref=v6.58.0"
  ec2_local_gateway_route_table_virtual_interface_group_associations = local.ec2_local_gateway_route_table_virtual_interface_group_associations
  depends_on                                                         = [module.ec2_local_gateway_route_tables]
}

module "ec2_local_gateway_route_table_vpc_associations" {
  source                                         = "git::https://github.com/AeternaModules/aws_ec2_local_gateway_route_table_vpc_association.git?ref=v6.58.0"
  ec2_local_gateway_route_table_vpc_associations = local.ec2_local_gateway_route_table_vpc_associations
  depends_on                                     = [module.ec2_local_gateway_route_tables]
}

