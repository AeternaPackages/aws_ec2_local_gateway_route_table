# --- aws_ec2_local_gateway_route_table ---
output "ec2_local_gateway_route_tables_id" {
  description = "Map of id values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_id
}

output "ec2_local_gateway_route_tables_arn" {
  description = "Map of arn values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_arn
}

output "ec2_local_gateway_route_tables_local_gateway_id" {
  description = "Map of local_gateway_id values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_local_gateway_id
}

output "ec2_local_gateway_route_tables_local_gateway_route_table_id" {
  description = "Map of local_gateway_route_table_id values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_local_gateway_route_table_id
}

output "ec2_local_gateway_route_tables_mode" {
  description = "Map of mode values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_mode
}

output "ec2_local_gateway_route_tables_outpost_arn" {
  description = "Map of outpost_arn values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_outpost_arn
}

output "ec2_local_gateway_route_tables_owner_id" {
  description = "Map of owner_id values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_owner_id
}

output "ec2_local_gateway_route_tables_region" {
  description = "Map of region values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_region
}

output "ec2_local_gateway_route_tables_state" {
  description = "Map of state values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_state
}

output "ec2_local_gateway_route_tables_tags" {
  description = "Map of tags values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_tags
}

output "ec2_local_gateway_route_tables_tags_all" {
  description = "Map of tags_all values across all ec2_local_gateway_route_tables, keyed the same as var.ec2_local_gateway_route_tables"
  value       = module.ec2_local_gateway_route_tables.ec2_local_gateway_route_tables_tags_all
}

# --- aws_ec2_local_gateway_route ---
output "ec2_local_gateway_routes_id" {
  description = "Map of id values across all ec2_local_gateway_routes, keyed the same as var.ec2_local_gateway_routes"
  value       = module.ec2_local_gateway_routes.ec2_local_gateway_routes_id
}

output "ec2_local_gateway_routes_destination_cidr_block" {
  description = "Map of destination_cidr_block values across all ec2_local_gateway_routes, keyed the same as var.ec2_local_gateway_routes"
  value       = module.ec2_local_gateway_routes.ec2_local_gateway_routes_destination_cidr_block
}

output "ec2_local_gateway_routes_local_gateway_route_table_id" {
  description = "Map of local_gateway_route_table_id values across all ec2_local_gateway_routes, keyed the same as var.ec2_local_gateway_routes"
  value       = module.ec2_local_gateway_routes.ec2_local_gateway_routes_local_gateway_route_table_id
}

output "ec2_local_gateway_routes_local_gateway_virtual_interface_group_id" {
  description = "Map of local_gateway_virtual_interface_group_id values across all ec2_local_gateway_routes, keyed the same as var.ec2_local_gateway_routes"
  value       = module.ec2_local_gateway_routes.ec2_local_gateway_routes_local_gateway_virtual_interface_group_id
}

output "ec2_local_gateway_routes_region" {
  description = "Map of region values across all ec2_local_gateway_routes, keyed the same as var.ec2_local_gateway_routes"
  value       = module.ec2_local_gateway_routes.ec2_local_gateway_routes_region
}

# --- aws_ec2_local_gateway_route_table_virtual_interface_group_association ---
output "ec2_local_gateway_route_table_virtual_interface_group_associations_id" {
  description = "Map of id values across all ec2_local_gateway_route_table_virtual_interface_group_associations, keyed the same as var.ec2_local_gateway_route_table_virtual_interface_group_associations"
  value       = module.ec2_local_gateway_route_table_virtual_interface_group_associations.ec2_local_gateway_route_table_virtual_interface_group_associations_id
}

output "ec2_local_gateway_route_table_virtual_interface_group_associations_local_gateway_id" {
  description = "Map of local_gateway_id values across all ec2_local_gateway_route_table_virtual_interface_group_associations, keyed the same as var.ec2_local_gateway_route_table_virtual_interface_group_associations"
  value       = module.ec2_local_gateway_route_table_virtual_interface_group_associations.ec2_local_gateway_route_table_virtual_interface_group_associations_local_gateway_id
}

output "ec2_local_gateway_route_table_virtual_interface_group_associations_local_gateway_route_table_arn" {
  description = "Map of local_gateway_route_table_arn values across all ec2_local_gateway_route_table_virtual_interface_group_associations, keyed the same as var.ec2_local_gateway_route_table_virtual_interface_group_associations"
  value       = module.ec2_local_gateway_route_table_virtual_interface_group_associations.ec2_local_gateway_route_table_virtual_interface_group_associations_local_gateway_route_table_arn
}

output "ec2_local_gateway_route_table_virtual_interface_group_associations_local_gateway_route_table_id" {
  description = "Map of local_gateway_route_table_id values across all ec2_local_gateway_route_table_virtual_interface_group_associations, keyed the same as var.ec2_local_gateway_route_table_virtual_interface_group_associations"
  value       = module.ec2_local_gateway_route_table_virtual_interface_group_associations.ec2_local_gateway_route_table_virtual_interface_group_associations_local_gateway_route_table_id
}

output "ec2_local_gateway_route_table_virtual_interface_group_associations_local_gateway_virtual_interface_group_id" {
  description = "Map of local_gateway_virtual_interface_group_id values across all ec2_local_gateway_route_table_virtual_interface_group_associations, keyed the same as var.ec2_local_gateway_route_table_virtual_interface_group_associations"
  value       = module.ec2_local_gateway_route_table_virtual_interface_group_associations.ec2_local_gateway_route_table_virtual_interface_group_associations_local_gateway_virtual_interface_group_id
}

output "ec2_local_gateway_route_table_virtual_interface_group_associations_owner_id" {
  description = "Map of owner_id values across all ec2_local_gateway_route_table_virtual_interface_group_associations, keyed the same as var.ec2_local_gateway_route_table_virtual_interface_group_associations"
  value       = module.ec2_local_gateway_route_table_virtual_interface_group_associations.ec2_local_gateway_route_table_virtual_interface_group_associations_owner_id
}

output "ec2_local_gateway_route_table_virtual_interface_group_associations_region" {
  description = "Map of region values across all ec2_local_gateway_route_table_virtual_interface_group_associations, keyed the same as var.ec2_local_gateway_route_table_virtual_interface_group_associations"
  value       = module.ec2_local_gateway_route_table_virtual_interface_group_associations.ec2_local_gateway_route_table_virtual_interface_group_associations_region
}

output "ec2_local_gateway_route_table_virtual_interface_group_associations_state" {
  description = "Map of state values across all ec2_local_gateway_route_table_virtual_interface_group_associations, keyed the same as var.ec2_local_gateway_route_table_virtual_interface_group_associations"
  value       = module.ec2_local_gateway_route_table_virtual_interface_group_associations.ec2_local_gateway_route_table_virtual_interface_group_associations_state
}

output "ec2_local_gateway_route_table_virtual_interface_group_associations_tags" {
  description = "Map of tags values across all ec2_local_gateway_route_table_virtual_interface_group_associations, keyed the same as var.ec2_local_gateway_route_table_virtual_interface_group_associations"
  value       = module.ec2_local_gateway_route_table_virtual_interface_group_associations.ec2_local_gateway_route_table_virtual_interface_group_associations_tags
}

output "ec2_local_gateway_route_table_virtual_interface_group_associations_tags_all" {
  description = "Map of tags_all values across all ec2_local_gateway_route_table_virtual_interface_group_associations, keyed the same as var.ec2_local_gateway_route_table_virtual_interface_group_associations"
  value       = module.ec2_local_gateway_route_table_virtual_interface_group_associations.ec2_local_gateway_route_table_virtual_interface_group_associations_tags_all
}

# --- aws_ec2_local_gateway_route_table_vpc_association ---
output "ec2_local_gateway_route_table_vpc_associations_id" {
  description = "Map of id values across all ec2_local_gateway_route_table_vpc_associations, keyed the same as var.ec2_local_gateway_route_table_vpc_associations"
  value       = module.ec2_local_gateway_route_table_vpc_associations.ec2_local_gateway_route_table_vpc_associations_id
}

output "ec2_local_gateway_route_table_vpc_associations_local_gateway_id" {
  description = "Map of local_gateway_id values across all ec2_local_gateway_route_table_vpc_associations, keyed the same as var.ec2_local_gateway_route_table_vpc_associations"
  value       = module.ec2_local_gateway_route_table_vpc_associations.ec2_local_gateway_route_table_vpc_associations_local_gateway_id
}

output "ec2_local_gateway_route_table_vpc_associations_local_gateway_route_table_id" {
  description = "Map of local_gateway_route_table_id values across all ec2_local_gateway_route_table_vpc_associations, keyed the same as var.ec2_local_gateway_route_table_vpc_associations"
  value       = module.ec2_local_gateway_route_table_vpc_associations.ec2_local_gateway_route_table_vpc_associations_local_gateway_route_table_id
}

output "ec2_local_gateway_route_table_vpc_associations_region" {
  description = "Map of region values across all ec2_local_gateway_route_table_vpc_associations, keyed the same as var.ec2_local_gateway_route_table_vpc_associations"
  value       = module.ec2_local_gateway_route_table_vpc_associations.ec2_local_gateway_route_table_vpc_associations_region
}

output "ec2_local_gateway_route_table_vpc_associations_tags" {
  description = "Map of tags values across all ec2_local_gateway_route_table_vpc_associations, keyed the same as var.ec2_local_gateway_route_table_vpc_associations"
  value       = module.ec2_local_gateway_route_table_vpc_associations.ec2_local_gateway_route_table_vpc_associations_tags
}

output "ec2_local_gateway_route_table_vpc_associations_tags_all" {
  description = "Map of tags_all values across all ec2_local_gateway_route_table_vpc_associations, keyed the same as var.ec2_local_gateway_route_table_vpc_associations"
  value       = module.ec2_local_gateway_route_table_vpc_associations.ec2_local_gateway_route_table_vpc_associations_tags_all
}

output "ec2_local_gateway_route_table_vpc_associations_vpc_id" {
  description = "Map of vpc_id values across all ec2_local_gateway_route_table_vpc_associations, keyed the same as var.ec2_local_gateway_route_table_vpc_associations"
  value       = module.ec2_local_gateway_route_table_vpc_associations.ec2_local_gateway_route_table_vpc_associations_vpc_id
}


