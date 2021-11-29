# Hexlet Project "DevOps level 2"
[![Actions Status](https://github.com/jeks0n/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/jeks0n/devops-for-programmers-project-lvl2/actions)

Goal: make deploy Docker Compose with Ansible.

App: https://hexlet-project.xyz/

## Software
Ansible >= 2.11

## Set up
Install collections and roles:
```
make install
```

## Prepare servers
Install collections and roles:
```
make prepare
```

## Check connections
Ping servers:
```
make ping
```

## Deploy
Deploy App to servers:
```
make deploy
```

## Monitor
Set up Datadog:
```
make monitor
```
## Start
Run Prepare, Monitor and Deploy:
```
make start
```
