# Overview

ArgoCD deployment manifests for home Kubernetes cluster.

## Miscellaneous

Longhorn UI: `192.168.1.129`
Argo UI: `192.168.1.130`
Prometheus: `192.168.1.131`

```bash
kubectl patch service argocd-server -n argocd --patch '{ "spec": { "type": "LoadBalancer", "loadBalancerIP": "192.168.1.130" } }'
```

```bash
kubectl patch service prometheus-server -n prometheus --patch '{ "spec": { "type": "LoadBalancer", "loadBalancerIP": "192.168.1.131" } }'
```