variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
    default = "Z045918523UHFS3WTXGUZ"
}

variable "domain_name" {
    default = "daws86sd.fun"
}