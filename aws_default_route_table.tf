resource "aws_default_route_table" "route_table_default" {
    default_route_table_id = aws_vpc.my_vpc.default_route_table_id
#configuração da tabela de roteamento

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway;igw.id
    }

    tags = merge(
        local.common_tags,
        {
            Name = format("%s_route_table", var enviroment)
            #%s pega a primeira variável após a virgula e substitui
        },
    )
}