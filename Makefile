.PHONY: playbook test help

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  playbook        to provisioning your machine with ansible"
	@echo "  test            to testing your machine with serverspec"

playbook:
	ansible-playbook -v playbook.yml
	@echo
	@echo "Provisning finished."

test:
	rake serverspec -v
	@echo
	@echo "Test finished."
