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
  addons                     = var.addons
  apiserver_ips              = var.apiserver_ips
  apiserver_name             = var.apiserver_name
  apiserver_names            = var.apiserver_names
  apiserver_port             = var.apiserver_port
  auto_pause_interval        = var.auto_pause_interval
  auto_update_drivers        = var.auto_update_drivers
  base_image                 = var.base_image
  binary_mirror              = var.binary_mirror
  cache_images               = var.cache_images
  cert_expiration            = var.cert_expiration
  cluster_name               = var.cluster_name
  cni                        = var.cni
  container_runtime          = var.container_runtime
  cpus                       = var.cpus
  cri_socket                 = var.cri_socket
  delete_on_failure          = var.delete_on_failure
  disable_driver_mounts      = var.disable_driver_mounts
  disable_metrics            = var.disable_metrics
  disable_optimizations      = var.disable_optimizations
  disk_size                  = var.disk_size
  dns_domain                 = var.dns_domain
  dns_proxy                  = var.dns_proxy
  docker_env                 = var.docker_env
  docker_opt                 = var.docker_opt
  download_only              = var.download_only
  driver                     = var.driver
  dry_run                    = var.dry_run
  embed_certs                = var.embed_certs
  extra_config               = var.extra_config
  extra_disks                = var.extra_disks
  feature_gates              = var.feature_gates
  force                      = var.force
  force_systemd              = var.force_systemd
  gpus                       = var.gpus
  ha                         = var.ha
  host_dns_resolver          = var.host_dns_resolver
  host_only_cidr             = var.host_only_cidr
  host_only_nic_type         = var.host_only_nic_type
  hyperkit_vpnkit_sock       = var.hyperkit_vpnkit_sock
  hyperkit_vsock_ports       = var.hyperkit_vsock_ports
  hyperv_external_adapter    = var.hyperv_external_adapter
  hyperv_use_external_switch = var.hyperv_use_external_switch
  hyperv_virtual_switch      = var.hyperv_virtual_switch
  image_mirror_country       = var.image_mirror_country
  image_repository           = var.image_repository
  insecure_registry          = var.insecure_registry
  install_addons             = var.install_addons
  interactive                = var.interactive
  iso_url                    = var.iso_url
  keep_context               = var.keep_context
  kubernetes_version         = var.kubernetes_version
  kvm_gpu                    = var.kvm_gpu
  kvm_hidden                 = var.kvm_hidden
  kvm_network                = var.kvm_network
  kvm_numa_count             = var.kvm_numa_count
  kvm_qemu_uri               = var.kvm_qemu_uri
  listen_address             = var.listen_address
  memory                     = var.memory
  mount                      = var.mount
  mount_9p_version           = var.mount_9p_version
  mount_gid                  = var.mount_gid
  mount_ip                   = var.mount_ip
  mount_msize                = var.mount_msize
  mount_options              = var.mount_options
  mount_port                 = var.mount_port
  mount_string               = var.mount_string
  mount_type                 = var.mount_type
  mount_uid                  = var.mount_uid
  namespace                  = var.namespace
  nat_nic_type               = var.nat_nic_type
  native_ssh                 = var.native_ssh
  network                    = var.network
  nfs_share                  = var.nfs_share
  nfs_shares_root            = var.nfs_shares_root
  no_kubernetes              = var.no_kubernetes
  no_vtx_check               = var.no_vtx_check
  nodes                      = var.nodes
  output                     = var.output
  ports                      = var.ports
  preload                    = var.preload
  qemu_firmware_path         = var.qemu_firmware_path
  registry_mirror            = var.registry_mirror
  service_cluster_ip_range   = var.service_cluster_ip_range
  socket_vmnet_client_path   = var.socket_vmnet_client_path
  socket_vmnet_path          = var.socket_vmnet_path
  ssh_ip_address             = var.ssh_ip_address
  ssh_key                    = var.ssh_key
  ssh_port                   = var.ssh_port
  ssh_user                   = var.ssh_user
  static_ip                  = var.static_ip
  subnet                     = var.subnet
  trace                      = var.trace
  uuid                       = var.uuid
  vm                         = var.vm
  wait                       = var.wait
  wait_timeout               = var.wait_timeout
}
