touch-secret:
	 [ -f .vault-pass ] || cp .vault-pass.example .vault-pass

install:
	ansible-galaxy role install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

ping: touch-secret
	ansible all -m ping

prepare: touch-secret
	ansible-playbook ./playbooks/prepare.yml

deploy: touch-secret
	ansible-playbook ./playbooks/deploy.yml

monitor: touch-secret
	ansible-playbook ./playbooks/monitor.yml

start: touch-secret
	ansible-playbook playbook.yml

encrypt-vault:
	ansible-vault encrypt $(FILE)

decrypt-vault:
	ansible-vault decrypt $(FILE)

view-vault:
	ansible-vault view $(FILE)

edit-vault:
	ansible-vault edit $(FILE)
