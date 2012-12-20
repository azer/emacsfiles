all:
	@echo "Pulling submodules..."
	@git pull && git submodule init && git submodule update && git submodule status
	#@git submodule foreach git pull origin master
	@echo "Setting up...";

	$(MAKE) setup-js2

setup-js2:
	@cd lib/auto-complete/dict; \
	ln -s javascript-mode js2-mode;

	@cd lib/js2-mode; \
	emacs --batch -f batch-byte-compile js2-mode.el; \
	mv js2-mode.elc ../.;


init:
	git submodule init && git submodule update && git submodule status

update:
	git submodule foreach "(git checkout master; git pull)&"

submodule:
	git submodule add ${git} lib/${name}

install:
	@mkdir lib/themes
	@echo "Locate your snippets in ~/.local/share/snippets"
	@mkdir -p ~/.local/share/snippets;
	@echo "Copy * into ~/.config/emacsfiles/"
	@mkdir -p ~/.config/emacsfiles
	@cp -rf * ~/.config/emacsfiles/.
	@ln -s ~/.config/emacsfiles/init.el ~/.emacs
	@echo "Done."
