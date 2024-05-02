ping:
	ansible webservers -i inventory.yaml -m ping

install:
	ansible-galaxy install -r requirements.yaml --ignore-certs

run:
	ansible-playbook -i inventory.yaml playbook.yaml