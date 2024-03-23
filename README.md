## Introduction
Terraform module to install AWS and NGINX ingress controllers

<!-- BEGIN_TF_DOCS -->
  
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.7.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.42.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.12.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.27.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.0 |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.42.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.12.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.27.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.0 |
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lb_role"></a> [lb\_role](#module\_lb\_role) | terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks | n/a |
## Resources

| Name | Type |
|------|------|
| [helm_release.aws_lb_controller](https://registry.terraform.io/providers/hashicorp/helm/2.12.1/docs/resources/release) | resource |
| [helm_release.nginx_ingress_controller](https://registry.terraform.io/providers/hashicorp/helm/2.12.1/docs/resources/release) | resource |
| [kubernetes_config_map.nginx_config](https://registry.terraform.io/providers/hashicorp/kubernetes/2.27.0/docs/resources/config_map) | resource |
| [kubernetes_service_account.service-account](https://registry.terraform.io/providers/hashicorp/kubernetes/2.27.0/docs/resources/service_account) | resource |
| [random_string.lb_suffix](https://registry.terraform.io/providers/hashicorp/random/3.6.0/docs/resources/string) | resource |
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/5.42.0/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.eks_cluster_auth](https://registry.terraform.io/providers/hashicorp/aws/5.42.0/docs/data-sources/eks_cluster_auth) | data source |
| [aws_lb.lb](https://registry.terraform.io/providers/hashicorp/aws/5.42.0/docs/data-sources/lb) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/5.42.0/docs/data-sources/region) | data source |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_ca"></a> [cluster\_ca](#input\_cluster\_ca) | CA certificate of the cluster. | `string` | n/a | yes |
| <a name="input_cluster_endpoint"></a> [cluster\_endpoint](#input\_cluster\_endpoint) | Endpoint of the cluster. | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of EKS cluster | `string` | n/a | yes |
| <a name="input_k8s_exec_args"></a> [k8s\_exec\_args](#input\_k8s\_exec\_args) | Args for Kubernetes provider exec plugin. Example command ['eks', 'get-token', '--cluster-name', '{clusterName}}'] | `list(string)` | n/a | yes |
| <a name="input_k8s_exec_command"></a> [k8s\_exec\_command](#input\_k8s\_exec\_command) | Command name for Kubernetes provider exec plugin. Example - 'aws | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace where nginx ingress and AWS LB Controller will be deployed to | `string` | n/a | yes |
| <a name="input_nginx_ingress_kind"></a> [nginx\_ingress\_kind](#input\_nginx\_ingress\_kind) | Kind of Nginx ingress controller | `string` | `"Deployment"` | no |
| <a name="input_oidc_provider_arn"></a> [oidc\_provider\_arn](#input\_oidc\_provider\_arn) | OIDC provider arn | `string` | n/a | yes |
| <a name="input_stack"></a> [stack](#input\_stack) | Stack name | `string` | `"dev"` | no |
## Outputs

No outputs.
<!-- END_TF_DOCS -->