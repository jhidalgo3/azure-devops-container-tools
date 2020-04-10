[github]: https://github.com/jhidalgo3/azure-devops-container-tools
[dockerstore]: https://hub.docker.com/r/jhidalgo3/azure-tools

# Azure Devops Container Tools

[![](https://img.shields.io/docker/image-size/jhidalgo3/azure-tools?sort=semver)][dockerstore] [![](https://img.shields.io/docker/v/jhidalgo3/azure-tools?sort=semver)][dockerstore]

Docker image to use in your Azure Devops Pipeline as container. There are some [devops tools](#Tools) available. 

* Repository name in Docker Hub: [jhidalgo3/azure-tools][dockerstore]

* Repository name in Github: [jhidalgo3/azure-devops-container-tools][github]

# Tools

- **gomplate** (v3.6.0): is a template renderer which supports a growing list of datasources, such as: JSON (including EJSON - encrypted JSON), YAML, AWS EC2 metadata, BoltDB, Hashicorp Consul and Hashicorp Vault secrets: [https://docs.gomplate.ca/](https://docs.gomplate.ca/)

- **Kubectl** (v1.17.0): is a command line tool for controlling Kubernetes clusters: [kubectl-commands](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)

# Build

```bash
$ docker build -t azure-tools .
```

# Usage

### Run shell

```bash
$ docker run --rm -it jhidalgo3/azure-tools:latest /bin/bash
```

### Use in Azure Devops Pipeline

```yaml
resources:
  containers:
  - container: azuretools
    image: jhidalgo3/azure-tools

[....]

- job: Template
  dependsOn: Build
  displayName: Gomplate
  container: azuretools
  steps:
  - script: |
      gomplate --version
```

# Contributing

PRs are welcome.

# Author

Jose Maria Hidalgo Garia - jhidalgo3@gmail.com

# License

MIT.