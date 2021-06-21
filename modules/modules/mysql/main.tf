provider "aws" {
	region	= "us-east-2"
}

resource "aws_db_instance" "example" {
	identifier_prefix	= "terraform-up-and-running"
	engine			= "mysql"
	allocated_storage	= 10
	instance_class		= "db.t2.micro"
	name			= "example_database"
	skip_final_snapshot 	= true
	username		= "admin"

	# How should we set the password?
	password 		= "BestOfLuck"
}
