terraform {
  required_version = ">= 1.7.0"
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = ">= 0.3.10"
    }
  }
}

# todo: 'auto_pause_interval' missing completions?
# todo: 'gpus' missing completions?
# todo: 'output' missing completion?
resource "minikube_cluster" "default" {
  for_each                   = var.minikube_clusters
  addons                     = each.value.addons
  apiserver_ips              = each.value.apiserver_ips
  apiserver_name             = each.value.apiserver_name
  apiserver_names            = each.value.apiserver_names
  apiserver_port             = each.value.apiserver_port
  auto_pause_interval        = each.value.auto_pause_interval
  auto_update_drivers        = each.value.auto_update_drivers
  base_image                 = each.value.base_image
  binary_mirror              = each.value.binary_mirror
  cache_images               = each.value.cache_images
  cert_expiration            = each.value.cert_expiration
  cluster_name               = each.key
  cni                        = each.value.cni
  container_runtime          = each.value.container_runtime
  cpus                       = each.value.cpus
  cri_socket                 = each.value.cri_socket
  delete_on_failure          = each.value.delete_on_failure
  disable_driver_mounts      = each.value.disable_driver_mounts
  disable_metrics            = each.value.disable_metrics
  disable_optimizations      = each.value.disable_optimizations
  disk_size                  = each.value.disk_size
  dns_domain                 = each.value.dns_domain
  dns_proxy                  = each.value.dns_proxy
  docker_env                 = each.value.docker_env
  docker_opt                 = each.value.docker_opt
  download_only              = each.value.download_only
  driver                     = each.value.driver
  dry_run                    = each.value.dry_run
  embed_certs                = each.value.embed_certs
  extra_config               = each.value.extra_config
  extra_disks                = each.value.extra_disks
  feature_gates              = each.value.feature_gates
  force                      = each.value.force
  force_systemd              = each.value.force_systemd
  gpus                       = each.value.gpus
  ha                         = each.value.ha
  host_dns_resolver          = each.value.host_dns_resolver
  host_only_cidr             = each.value.host_only_cidr
  host_only_nic_type         = each.value.host_only_nic_type
  hyperkit_vpnkit_sock       = each.value.hyperkit_vpnkit_sock
  hyperkit_vsock_ports       = each.value.hyperkit_vsock_ports
  hyperv_external_adapter    = each.value.hyperv_external_adapter
  hyperv_use_external_switch = each.value.hyperv_use_external_switch
  hyperv_virtual_switch      = each.value.hyperv_virtual_switch
  image_mirror_country       = each.value.image_mirror_country
  image_repository           = each.value.image_repository
  insecure_registry          = each.value.insecure_registry
  install_addons             = each.value.install_addons
  interactive                = each.value.interactive
  iso_url                    = each.value.iso_url
  keep_context               = each.value.keep_context
  kubernetes_version         = each.value.kubernetes_version
  kvm_gpu                    = each.value.kvm_gpu
  kvm_hidden                 = each.value.kvm_hidden
  kvm_network                = each.value.kvm_network
  kvm_numa_count             = each.value.kvm_numa_count
  kvm_qemu_uri               = each.value.kvm_qemu_uri
  listen_address             = each.value.listen_address
  memory                     = each.value.memory
  mount                      = each.value.mount
  mount_9p_version           = each.value.mount_9p_version
  mount_gid                  = each.value.mount_gid
  mount_ip                   = each.value.mount_ip
  mount_msize                = each.value.mount_msize
  mount_options              = each.value.mount_options
  mount_port                 = each.value.mount_port
  mount_string               = each.value.mount_string
  mount_type                 = each.value.mount_type
  mount_uid                  = each.value.mount_uid
  namespace                  = each.value.namespace
  nat_nic_type               = each.value.nat_nic_type
  native_ssh                 = each.value.native_ssh
  network                    = each.value.network
  nfs_share                  = each.value.nfs_share
  nfs_shares_root            = each.value.nfs_shares_root
  no_kubernetes              = each.value.no_kubernetes
  no_vtx_check               = each.value.no_vtx_check
  nodes                      = each.value.nodes
  output                     = each.value.output
  ports                      = each.value.ports
  preload                    = each.value.preload
  qemu_firmware_path         = each.value.qemu_firmware_path
  registry_mirror            = each.value.registry_mirror
  service_cluster_ip_range   = each.value.service_cluster_ip_range
  socket_vmnet_client_path   = each.value.socket_vmnet_client_path
  socket_vmnet_path          = each.value.socket_vmnet_path
  ssh_ip_address             = each.value.ssh_ip_address
  ssh_key                    = each.value.ssh_key
  ssh_port                   = each.value.ssh_port
  ssh_user                   = each.value.ssh_user
  static_ip                  = each.value.static_ip
  subnet                     = each.value.subnet
  trace                      = each.value.trace
  uuid                       = each.value.uuid
  vm                         = each.value.vm
  wait                       = each.value.wait
  wait_timeout               = each.value.wait_timeout
}
