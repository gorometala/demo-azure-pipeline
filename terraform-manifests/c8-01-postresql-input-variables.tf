# DB Name
variable "postgresql_db_name" {
    description = "Azure PostgreSQL Database Name"
    type        = string
    }

    # DB Username - Enable Sensitive flag
    variable "postgresql_db_username" {
    description = "Azure PostgreSQL Database Administrator Username"
    type        = string
    }
    # DB Password - Enable Sensitive flag
    variable "postgresql_db_password" {
    description = "Azure PostgreSQL Database Administrator Password"
    type        = string
    sensitive   = true
    }
