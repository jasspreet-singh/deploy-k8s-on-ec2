# Kubernetes on OCI VMs with k0s

This project automates the deployment of a production-ready Kubernetes cluster on Oracle Cloud VMs with k0s. Ideal for those who want full control over their K8s infrastructure without using managed services like EKS.

## 🔧 Features

- OpenTofu Scripts to Provision OCI VM instances for control plane and worker nodes
- Configure networking, kubelet, kube-proxy, and container runtime `containerd`
- Deploy Kubernetes with k0s
