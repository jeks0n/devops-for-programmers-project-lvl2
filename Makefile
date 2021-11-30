touch-vault-pass:
	touch .vault-pass

install:
	ansible-galaxy role install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

ping:
	ansible all -m ping

prepare:
	ansible-playbook ./playbooks/prepare.yml

deploy:
	ansible-playbook ./playbooks/deploy.yml

monitor:
	ansible-playbook ./playbooks/monitor.yml

start:
	ansible-playbook playbook.yml

encrypt-vault:
	ansible-vault encrypt $(FILE)

decrypt-vault:
	ansible-vault decrypt $(FILE)

view-vault:
	ansible-vault view $(FILE)

edit-vault:
	ansible-vault edit $(FILE)
