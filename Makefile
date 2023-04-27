CMD_RUN = ANSIBLE_LOCALHOST_WARNING=false ansible-playbook playbook.yml --extra-vars="dev_user=${USER}" --ask-become-pass 

install-ansible:
	bash scripts/install-ansible.sh

install-requirements:
	ansible-galaxy collection install community.general

run:
	$(CMD_RUN) 

run-verbose:
	$(CMD_RUN) -vvv

run-non-gui-distro:
	$(CMD_RUN) --extra-vars="gui=false" 

run-wsl:
	$(CMD_RUN) --extra-vars="gui=false wsl=true"