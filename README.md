# Jenkins on AKS

Welcome to my Jenkins on AKS project!

This repository contains all necessary files to set up an AKS (Azure Kubernetes Service) cluster with Terraform, and then deploy Jenkins CI/CD infrastructure on that cluster.

>Please, keep in mind that this project is still under development.

Technologies used:
- Kubernetes
- Docker
- Terraform
- Jenkins

Reusable Terraform modules:

- [`aks`](https://github.com/0xtr1gger/jenkins_on_kubernetes) - creates an AKS cluster

## Deploy on AKS



## Local setup 

It is possble to launch Jenkins Server on a local `k3d` cluster for testing or demonstration purposes. Below are instructions on how to do that.

1. Create a `k3d` cluster:

```bash
k3d cluster create -p "8081:80@loadbalancer" --agents 2
```

2. Apply namespace configuration:

```bash
kubectl apply -f manifests/namespace.yaml
```

3. Apply other manifests:

```bash
kubectl apply -f manifests/
```

4. Switch the default namespace:

```bash
kubectl config set-context --current --namespace=jenkins-namespace
```

To display your current namespace, use this command:

```bash
kubectl config current-context
```

5. Access Jenkins at the following address from your browser:

```
http://localhost:8081
```

6. Get cluster pods:

```bash
kubectl get pods
```

Example output:

```bash
NAME                              READY   STATUS    RESTARTS   AGE
jenkins-server-588fcc99f9-wxrkf   1/1     Running   0          16m
```

Please, copy the name of the Pod where Jenkins is running (`jenkins-server-588fcc99f9-wxrkf`).

7. Get the admin password for Jenkins using the following command:

```bash
kubectl exec pods/jenkins-server-588fcc99f9-wxrkf -- cat /var/jenkins_home/secrets/initialAdminPassword
```

Enjoy your Jenkins!


 

