output "kubeconfig-admin" {
  value = module.bootstrap.kubeconfig-admin
}

# Outputs for worker pools

output "network_name" {
  value = google_compute_network.network.name
}

output "kubeconfig" {
  value = module.bootstrap.kubeconfig-kubelet
}

# Outputs for custom firewalling

output "network_self_link" {
  value = google_compute_network.network.self_link
}

# Outputs for custom load balancing

output "worker_instance_group" {
  description = "Worker managed instance group full URL"
  value       = module.workers.instance_group
}

output "worker_target_pool" {
  description = "Worker target pool self link"
  value       = module.workers.target_pool
}

