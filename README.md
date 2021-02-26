# terraform-helm-release

[![Build Status](https://github.com/JamesWoolfenden/terraform-helm-release/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-helm-release)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-helm-release.svg)](https://github.com/JamesWoolfenden/terraform-helm-release/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-helm-release.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-helm-release/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-helm-release/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-helm-release&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-helm-release/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-helm-release&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module - creates Aurpora cluster and instances

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a basic illustration of the resources.

Include this repository as a module in your existing terraform code:

```terraform
module "helm" {
  source          = "JamesWoolfenden/helm/aws"
  version         = "0.0.2"
  release=var.release
}
```

``` helm
helm delete statefulset.apps/rabbitmq
kubectl get all
kubectl delete statefulset.apps/rabbitmq-1579787249
kubectl delete service/rabbitmq
kubectl delete service/rabbitmq-1579787249-headless

kubectl version --short && \
kubectl get componentstatus && \
kubectl get nodes && \
kubectl cluster-info

kubectl create namespace rabbitmq
helm install my-rabbit stable/rabbitmq --namespace rabbitmq -f rabbit-values.yaml

watch kubectl get deployments,pods,services --namespace rabbitmq

helm repo add eks https://aws.github.io/eks-charts
helm repo add bitami https://charts.bitnami.com/bitnami
helm repo remove stable
helm repo add stable https://kubernetes-charts.storage.googleapis.com/

helm list
helm search repo stable/rabbitmq
helm repo update
```

```cli
helm repo add bitami https://charts.bitnami.com/bitnami

# might take time to populate

helm repo update

helm install bitnami/rabbitmq --generate-name
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| helm | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [helm_release](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| release | Helm chart and url details | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| release | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-helm-release/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-helm-release/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-helm-release&url=https://github.com/JamesWoolfenden/terraform-helm-release
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-helm-release&url=https://github.com/JamesWoolfenden/terraform-helm-release
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-helm-release
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-helm-release
[share_email]: mailto:?subject=terraform-helm-release&body=https://github.com/JamesWoolfenden/terraform-helm-release
