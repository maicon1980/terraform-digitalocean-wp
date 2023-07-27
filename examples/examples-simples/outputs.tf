
output "wp_lb_ip" {
   value = digitalocean_loadbalancer.wp_lb.ip
   description = "IP do Load Balancer"
}

output "wp_vm_IPs" {
   value = digitalocean_droplet.vm_wp[*].ipv4_address
   description = "IP das VMs Wordpress"
}

output "nfs_vm_IP" {
   value = digitalocean_droplet.vm_nfs.ipv4_address
   description = "IP das VM NFS"
}

output "wp_db_user" {
    value     = digitalocean_database_user.wp_database_user.name
    description = "User Banco de dados"

}

output "wp_db_passwd" {
    value     = digitalocean_database_user.wp_database_user.password
    description = "Senha Banco de dados"
    sensitive = true
}