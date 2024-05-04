# Проверка доступности хостов в группе webservers
ping-hosts:
	ansible webservers -i inventory.yaml -m ping --vault-password-file vault_pass

# Установка необходимых ролей и коллекций из Ansible Galaxy
install-dependencies:
	ansible-galaxy install -r requirements.yaml --ignore-certs

# Основной процесс развертывания Redmine
deploy-application:
	ansible-playbook -i inventory.yaml playbook.yaml --vault-password-file vault_pass

# Шифрование конфигурационного файла с использованием Ansible Vault
encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.yaml --vault-password-file vault_pass

# Расшифровка конфигурационного файла
decrypt-vault:
	ansible-vault decrypt group_vars/webservers/vault.yaml --vault-password-file vault_pass

# Редактирование зашифрованного конфигурационного файла
edit-vault:
	ansible-vault edit group_vars/webservers/vault.yaml --vault-password-file vault_pass

# Обновление пароля зашифрованного файла
rekey-vault:
	ansible-vault rekey group_vars/webservers/vault.yaml --vault-password-file vault_pass