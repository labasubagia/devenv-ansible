CMD_RUN = ANSIBLE_LOCALHOST_WARNING=false ansible-playbook playbook.yml --extra-vars="dev_user=${USER}" --ask-become-pass 

install-ansible:
	bash scripts/install-ansible.sh

install-requirements: install-ansible
	ansible-galaxy collection install community.general

run: install-requirements
	$(CMD_RUN) 

run-verbose: install-requirements
	$(CMD_RUN) -vvv

run-non-gui-distro: install-requirements
	$(CMD_RUN) --extra-vars="gui=false" 

run-wsl: install-requirements
	$(CMD_RUN) --extra-vars="gui=false wsl=true"