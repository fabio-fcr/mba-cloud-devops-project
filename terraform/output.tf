output "instance_private_ip_manager_node01" {
  description = "Private IP address of bootCamp-manager_node01"
  value       = aws_instance.bootcamp-manager-node01.private_ip
}

output "instance_private_ip_manager_node02" {
  description = "Private IP address of bootCamp-manager_node02"
  value       = aws_instance.bootcamp-manager-node02.private_ip
}

output "instance_private_ip_manager_node03" {
  description = "Private IP address of bootCamp-manager_node03"
  value       = aws_instance.bootcamp-manager-node03.private_ip
}

output "instance_private_ip_worker_node01" {
  description = "Private IP address of bootCamp-worker_node01"
  value       = aws_instance.bootcamp-worker-node01.private_ip
}

output "instance_private_ip_worker_node02" {
  description = "Private IP address of bootCamp-worker_node02"
  value       = aws_instance.bootcamp-worker-node02.private_ip
}

output "instance_private_ip_worker_node03" {
  description = "Private IP address of bootCamp-worker_node03"
  value       = aws_instance.bootcamp-worker-node03.private_ip
}

output "instance_private_ip_worker_node04" {
  description = "Private IP address of bootCamp-worker_node04"
  value       = aws_instance.bootcamp-worker-node04.private_ip
}