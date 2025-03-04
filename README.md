# Jenkins on Kubernetes

This repository contains Kubernetes manifests necessary to deploy Jenkins on a Kubernetes cluster. 

>This project is under development, and the setup is tested on a local **`k3d`** cluster, and it's currently using `local` persistent volumes for Jenkins data. This will be fixed in the future.

- Jenkins runs as a Docker container on one of the cluster nodes. It can be accessed with an ingress.

**Current setup**

To start the lab:

1. Create a `k3d` cluster:

```bash
k3d cluster create -p "8081:80@loadbalancer" --agents 2
```

2. Apply the deployments:

```bash
kubectl apply -f manifests/
```

3. Access Jenkins at the following address from your browser:

```
http://localhost:8081
```

4. Get cluster pods:

```bash
kubectl get pods
```

Example output:

```bash
NAME                              READY   STATUS    RESTARTS   AGE
jenkins-server-588fcc99f9-wxrkf   1/1     Running   0          16m
```

Please, copy the name of the Pod where Jenkins is running (`jenkins-server-588fcc99f9-wxrkf`).

5. Get the admin password for Jenkins using the following command:

```bash
kubectl exec pods/jenkins-server-588fcc99f9-wxrkf -- cat /var/jenkins_home/secrets/initialAdminPassword
```

Enjoy your Jenkins!


 

