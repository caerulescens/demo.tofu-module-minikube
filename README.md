# tofu-module-minikube

A [`tofu`](https://github.com/opentofu/opentofu) module for [`minikube`](https://github.com/kubernetes/minikube).

## Install

| Name                                                               |
|--------------------------------------------------------------------|
| [minikube](https://github.com/kubernetes/minikube)                 |
| [tofu](https://github.com/opentofu/opentofu)                       |
| [tflint](https://github.com/terraform-linters/tflint)              |
| [terraform-docs](https://github.com/terraform-docs/terraform-docs) |
| [pre-commit](https://github.com/pre-commit/pre-commit)             |

## Usage

Configure:
```shell
cat <<EOF > terraform.tfvars
minikube_clusters = {
  "minikube": {
    "driver": "docker",
  }
}
EOF
```

Run:
```shell
tofu init
tofu plan
tofu apply
```

Test:
```shell
tofu test
```

Lint:
```shell
tflint --chdir .
```

Docs:
```shell
terraform-docs markdown --output-file README.tofu.md .
```

Check:
```shell
pre-commit run
```
