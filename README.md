[![Build Status](https://travis-ci.org/opspec-pkgs/azure.aks.get-kubeconfig.svg?branch=master)](https://travis-ci.org/opspec-pkgs/azure.aks.get-kubeconfig)

# Problem statement

gets a kubeconfig for a kubernetes cluster in azure kubernetes service

# Format

this version of the pkg is in [![opspec 0.1.5](https://img.shields.io/badge/opspec-0.1.5-brightgreen.svg?colorA=6b6b6b&colorB=fc16be)](https://opspec.io/0.1.5/packages.html) format

# Example usage

## install

```shell
opctl pkg install github.com/opspec-pkgs/azure.aks.get-kubeconfig#1.0.0
```

## run

```
opctl run github.com/opspec-pkgs/azure.aks.get-kubeconfig#1.0.0
```

## compose

```yaml
op:
  pkg: { ref: github.com/opspec-pkgs/azure.aks.get-kubeconfig#1.0.0 }
  inputs:
    loginId:
    loginSecret:
    name:
    resourceGroup:
    subscriptionId:
    # begin optional params
    loginTenantId:
    loginType:
    # end optional params
  outputs:
    kubeConfig:
```

# Support

join us on
[![Slack](https://opspec-slackin.herokuapp.com/badge.svg)](https://opspec-slackin.herokuapp.com/)
or
[open an issue](https://github.com/opspec-pkgs/azure.aks.get-kubeconfig/issues)

# Releases

releases are versioned according to
[![semver 2.0.0](https://img.shields.io/badge/semver-2.0.0-brightgreen.svg)](http://semver.org/spec/v2.0.0.html)
and [tagged](https://git-scm.com/book/en/v2/Git-Basics-Tagging); see
[CHANGELOG.md](CHANGELOG.md) for release notes

# Contributing

see
[project/CONTRIBUTING.md](https://github.com/opspec-pkgs/project/blob/master/CONTRIBUTING.md)
