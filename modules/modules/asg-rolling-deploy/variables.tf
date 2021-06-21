variable "cluster_name" {
	description		= "The name to use for all the cluster resources"
	type			= string
}

variable "ami" {
	description 		= "AMI to run in the cluster"
	default 		= "ami-0c55b159cbfafe1f0"
	type			= string
}

variable "instance_type" {
	description 		= "Type of EC2 instances to run"
	type			= string 
}

variable "min_size" {
	description		= "The minimum number of EC2 instances in the ASG"
	type 			= number 
}

variable "max_size" {
	description		= "The maximum number of EC2 instances in the ASG"
	type 			= number 
}

variable "custom_tags" {
	description			= "custom tags to set on the instances in the ASG"
	type 				= map(string)
	default 			= {}
}

variable "enable_autoscaling" {
	description 			= "if set to true, enable auto scaling"
	type				= bool 
}

variable "server_port" {
	description = "The port the server will use for HTTP requests"
	type = number 
	default = 8080
}

variable "subnet_ids" {
	description 		= "subnet IDs to deploy to"
	type			= list(string)
}

variable "target_group_arns" {
	description		= "The ARNs of ELB target groups in which to register instances"
	type			= list(string)
	default			= []
}

variable "health_check_type" {
	description		= "The type of health check to perform. Must be one of: EC2, ELB."
	type			= string 
	default 		= "EC2"
}

variable "user_data" {
	description		= "User data script to run in each instance at boot"
	type 			= string
	default 		= null
}
