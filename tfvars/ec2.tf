resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami_ami_info.id
    vpc_security_group_ids = ["sg-0f3e54459cc27255a"]
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            Name = "${each.key}.${var.environment}"
            Module = "${each.key}.${var.environment}"
            Environment = var.environment
        }
    )
  
}