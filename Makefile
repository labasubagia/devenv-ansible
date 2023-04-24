install-requirements:
	ansible-galaxy collection install community.general

run:
	ansible-playbook playbook.yml --ask-become-pass 

run-verbose:
	ansible-playbook playbook.yml --ask-become-pass -vvv
