resource ""

resource "aws_db_instance" "postgresql" {
    allocated_storage = var.minimum_storage
    max_allocated_storage = var.maximum_storage
    db_name = "${var.db_name}-postgresql"
    engine = "postgresql"
    engine_version = 
    instance_class =  
    multi_az = true
    manage_master_user_password = true
    username = 
    parameter_group_name = 
    

}

resource "aws_db_subnet_group" ""{

}

resource "aws_db_snapshot" "" {

}