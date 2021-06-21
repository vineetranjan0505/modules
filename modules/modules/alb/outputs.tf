output "alb_dns_name" {
	value 		= aws_lb.example.dns_name 
	description	= "domain name of the load balancer"
}

output "alb_http_listener_arn" {
	value		= aws_lb_listener.http.arn
	description	= "ARN of the HTTP listener"
}

output "alb_security_group_id" {
	value 			= aws_security_group.alb.id
	description		= "ALB security group ID"
}

