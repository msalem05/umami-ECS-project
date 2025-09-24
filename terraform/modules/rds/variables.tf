variable "minimum_storage" {
    description = "Minimum storage for DB Storage Autoscaling"
    type = number
    default = 50
}

variable "maximum_storage" {
    description = "Maximum storage for DB Storage Autoscaling"
    type = number
    default = 200
}

variable "db_name" {
    type = string
    default ""
}