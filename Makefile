restore::
	echo "Restoring VSCode extensions"; \
	for id in $$(cat VSfile); do code --install-extension "$$id"; done
