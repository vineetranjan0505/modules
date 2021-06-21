output "asg_name" {
	description		= "name of ASG"
	value			= aws_autoscaling_group.example.name
}

output "instance_security_group_id" {
	description 		= "ID of the EC2 instance security group"
	value			= aws_security_group.instance.id
}
