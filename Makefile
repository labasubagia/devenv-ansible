install-ansible:
	bash scripts/install-ansible.sh

install-requirements:
	ansible-galaxy collection install community.general

run:
	ANSIBLE_LOCALHOST_WARNING=false ansible-playbook playbook.yml --extra-vars="dev_user=${USER}" --ask-become-pass 

run-verbose:
	ANSIBLE_LOCALHOST_WARNING=false ansible-playbook playbook.yml --extra-vars="dev_user=${USER}" --ask-become-pass -vvv
