.PHONY: playbook test help

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  playbook        to provisioning your machine with ansible"
	@echo "  test            to testing your machine with serverspec"

playbook:
	ansible-playbook -vv -K playbook.yml -i hosts
	@echo
	@echo "Provisning finished."

test:
	rake serverspec
	@echo
	@echo "Test finished."
