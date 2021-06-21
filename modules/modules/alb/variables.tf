variable "alb_name" {
	description		= "the name to use for this alb"
	type			= string
}

variable "subnet_ids" {
  description = "The subnet IDs to deploy to"
  type        = list(string)
}
