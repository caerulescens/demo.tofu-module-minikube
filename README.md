# Demo: tofu-module-minikube

A [`tofu`](https://github.com/opentofu/opentofu) module for [`minikube`](https://github.com/kubernetes/minikube).

## Install

| Name                                               |
|----------------------------------------------------|
| [minikube](https://github.com/kubernetes/minikube) |
| [tofu](https://github.com/opentofu/opentofu)       |

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

Check:
```shell
pre-commit run
```
