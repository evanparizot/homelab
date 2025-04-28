.PHONY: all deploy refresh sync status

all: deploy refresh sync status

deploy:
	kubectl apply -f root-application.yaml

refresh:
	kubectl patch application homelab -n argocd --type merge -p '{"metadata": {"annotations": {"argocd.argoproj.io/refresh": "hard"}}}'

sync:
	argocd app sync homelab --force

status:
	argocd app get homelab
