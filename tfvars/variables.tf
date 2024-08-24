variable "instance_names"{
    type   = map
   # default  = {
   #   backend-dev = "t3.micro"
#    frontend-dev = "t3.micro"
 #   }
}

variable "environment" {
 #   default = "dev"
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "true"
        
    }
}

variable "domain_name" {
    default = "mdom.fun"
}

variable "Zone_id" {
    default = "Z0741375363YVMJPTO4PJ"
}