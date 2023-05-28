locals {
    cidr_block_prefix{
        dev = "172.16"
        prd = "172.17"

    }
    network_prefix = lookup(local.cidr_block_prefix, var.enviroment)

    subnet_public = {
        1 ={ cidr_block = "${local.network_prefix}.1.0/24", availability_zone }
        2 ={ cidr_block = "${local.network_prefix}.2.0/24", availability_zone }
    }

    subnet_public = {
        1 ={ cidr_block = "${local.network_prefix}.3.0/24", availability_zone }
        2 ={ cidr_block = "${local.network_prefix}.4.0/24", availability_zone }
    }

    common_tags = {
        Owner = var.owner
        Enviroment = var.enviroment
    }
}