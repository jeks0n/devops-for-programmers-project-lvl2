touch-secret:
	 [ -f .vault-pass ] || cp .vault-pass.example .vault-pass

install:
	ansible-galaxy role install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

ping: touch-secret
	ansible all -m ping

deploy:
	ansible-playbook playbook.yml

encrypt-vault:
	ansible-vault encrypt $(FILE) --vault-password-file vault-password

decrypt-vault:
	ansible-vault decrypt $(FILE) --vault-password-file vault-password

view-vault:
	ansible-vault view $(FILE) --vault-password-file vault-password
