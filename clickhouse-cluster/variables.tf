variable "clickhouse_cluster_manifest_path" {
  description = "Path to the cluster YAML file (use it to install a different or custom cluster version)"
  default     = "./manifests/clickhouse-cluster.yaml.tpl"
  type        = string
}

variable "zookeeper_cluster_manifest_path" {
  description = "Path to the zookeeper cluster YAML file (use it to install a different or custom cluster version)"
  default     = "./manifests/zookeeper-cluster.yaml"
  type        = string
}

variable "clickhouse_cluster_name" {
  description = "Name of the ClickHouse cluster"
  default     = "chi"
  type        = string
}

variable "clickhouse_cluster_namespace" {
  description = "Namespace for the ClickHouse cluster"
  default     = "clickhouse"
  type        = string
}

variable "clickhouse_cluster_user" {
  description = "ClickHouse user"
  default     = "test"
  type        = string
}

variable "clickhouse_cluster_password" {
  description = "ClickHouse password"
  type        = string
  default     = null
}

variable "zookeeper_namespace" {
  description = "Namespace for the zookeeper cluster"
  default     = "zoo1ns"
  type        = string
}

variable "cluster_endpoint" {
  type    = string
  default = ""
}

variable "cluster_certificate_authority" {
  type    = string
  default = ""
}

variable "kubeconfig_user_exec" {
  description = "The exec block configuration for kubeconfig user authentication"
  type        = string
  default     = ""
}

variable "wait_for_clickhouse_loadbalancer" {
  description = "Enable waiting for the ClickHouse LoadBalancer to receive a hostname"
  type        = bool
  default     = false
}