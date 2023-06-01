variable "name" {
    description = "Name of S3 bucket"
    type = string
    nullable = false
}

variable "region" {
    description = "Region where to create resources" 
    type = string
    default = "eu-west-1"
}

variable "acl" {
    description = "Canned ACL to apply to the bucket. Default is private."
    type = string
    default = "public-read"

    validation {
        condition = contains(["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "log-delivery-write"], var.acl)
        error_message = "Provided ACL is not a recognized canned type. The page https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl has available options."
    }
}

variable "user" {
    description = "Username to assign permissions for S3 bucket to. If left blank, will not create permissions."
    default = "none"
}

variable "input_tag" {
    description = "tag to be set by blueprint input" 
    type = string
    default = ""
}

variable "tag1" {
    description = "tag1" 
    type = string
    default = ""
}

variable "tag2" {
    description = "tag2" 
    type = string
    default = "value2"
}

variable "tag3" {
    description = "tag3" 
    type = string
    default = ""
}


variable "tag4" {
    description = "tag4" 
    type = string
    default = ""
}

variable "param_tag" {
    description = "param_tag" 
    type = string
    default = ""
}

variable "test_tag"{
    description = "test_tag" 
    type = string
    default = "ValueFromLatest"
}
    

