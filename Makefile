install-requirements:
	ansible-galaxy collection install community.general

run:
	ANSIBLE_LOCALHOST_WARNING=false ansible-playbook playbook.yml --ask-become-pass 

run-verbose:
	ANSIBLE_LOCALHOST_WARNING=false ansible-playbook playbook.yml --ask-become-pass -vvv
