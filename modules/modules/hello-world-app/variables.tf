variable "server_port" {
	description = "The port the server will use for HTTP requests"
	type = number 
	default = 8080
}

variable "server_text" {
	description		= "text the web server should return"
	default 		= "Hello, World"
	type			= string
}

variable "environment" {
	description			= "the name of the environment we are deploying to"
	type				= string 
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}

variable "enable_autoscaling" {
  description = "If set to true, enable auto scaling"
  type        = bool
}

variable "custom_tags" {
  description = "Custom tags to set on the Instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "ami" {
	description 		= "AMI to run in the cluster"
	default 		= "ami-0c55b159cbfafe1f0"
	type			= string
}
