.PHONY: validate bootstrap backup deploy-apps clean

validate:
	ansible-playbook playbooks/validate-pi.yml

bootstrap:
	ansible-playbook playbooks/bootstrap-edge.yml --limit raspberry-pi

backup:
	ansible-playbook playbooks/backup-setup.yml

deploy-apps:
	kubectl apply -f argocd-apps/ --kubeconfig ~/.kube/config

status:
	@echo "=== K3s Status ==="
	kubectl get nodes --kubeconfig ~/.kube/config
	@echo "=== ArgoCD Apps ==="
	kubectl get applications -n argocd --kubeconfig ~/.kube/config
	@echo "=== Backup Status ==="
	systemctl status vault-agent

clean:
	k3s-uninstall.sh || true