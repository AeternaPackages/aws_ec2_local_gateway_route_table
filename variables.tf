variable "ec2_local_gateway_route_tables" {
  description = <<EOT
Map of ec2_local_gateway_route_tables, attributes below
Required:
    - local_gateway_id
    - mode
Optional:
    - region
    - tags
Nested ec2_local_gateway_routes (aws_ec2_local_gateway_route):
    Required:
        - destination_cidr_block
        - local_gateway_virtual_interface_group_id
    Optional:
        - region
Nested ec2_local_gateway_route_table_virtual_interface_group_associations (aws_ec2_local_gateway_route_table_virtual_interface_group_association):
    Required:
        - local_gateway_virtual_interface_group_id
    Optional:
        - region
        - tags
Nested ec2_local_gateway_route_table_vpc_associations (aws_ec2_local_gateway_route_table_vpc_association):
    Required:
        - vpc_id
    Optional:
        - region
        - tags
        - tags_all
EOT

  type = map(object({
    local_gateway_id = string
    mode             = string
    region           = optional(string)
    tags             = optional(map(string))
    ec2_local_gateway_routes = optional(map(object({
      destination_cidr_block                   = string
      local_gateway_virtual_interface_group_id = string
      region                                   = optional(string)
    })))
    ec2_local_gateway_route_table_virtual_interface_group_associations = optional(map(object({
      local_gateway_virtual_interface_group_id = string
      region                                   = optional(string)
      tags                                     = optional(map(string))
    })))
    ec2_local_gateway_route_table_vpc_associations = optional(map(object({
      vpc_id   = string
      region   = optional(string)
      tags     = optional(map(string))
      tags_all = optional(map(string))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.ec2_local_gateway_route_tables) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.ec2_local_gateway_route_tables : [for kk in keys(coalesce(v0.ec2_local_gateway_routes, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.ec2_local_gateway_route_tables : [for kk in keys(coalesce(v0.ec2_local_gateway_route_table_virtual_interface_group_associations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.ec2_local_gateway_route_tables : [for kk in keys(coalesce(v0.ec2_local_gateway_route_table_vpc_associations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
