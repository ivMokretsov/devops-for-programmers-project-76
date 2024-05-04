ping:
	ansible webservers -i inventory.yaml -m ping

install_docker:
	ansible-playbook -i inventory.yaml install_docker.yaml --vault-password-file vault_pass

install_requirements:
	ansible-galaxy install -r requirements.yaml --ignore-certs

build:
	ansible-playbook -i inventory.yaml playbook.yaml --vault-password-file vault_pass


# Шифрование файла
encrypt:
	ansible-vault group_vars/webservers/vault.yaml --vault-password-file vault_pass

# Расшифровка файла
decrypt:
	ansible-vault decrypt group_vars/webservers/vault.yaml --vault-password-file vault_pass

# Редактирование зашифрованного файла
edit:
	ansible-vault edit group_vars/webservers/vault.yaml --vault-password-file vault_pass

# Перешифровка файла с новым паролем
rekey:
	ansible-vault rekey group_vars/webservers/vault.yaml --vault-password-file vault_pass