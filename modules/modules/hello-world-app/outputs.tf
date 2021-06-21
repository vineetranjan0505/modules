output "alb_dns_name" {
	value = module.alb.alb_dns_name 
	description = "The domain name of the load balancer"
}

output "asg_name" {
	value 			= module.asg.asg_name
	description		= "Name of the auto-scaling-group"
}

output "instance_security_group_id" {
	value 			= module.asg.instance_security_group_id
	description 		= "ID of the EC2 instance security group"
}
