all:
	@echo "Pulling submodules..."
	@git pull && git submodule init && git submodule update && git submodule status
	@git submodule foreach git pull
	@echo "Building...";
	@cd lib/auto-complete/dict; \
	@ln -s javascript-mode js2-mode;

	@cd lib/js2-mode; \
	@emacs --batch -f batch-byte-compile js2-mode.el; \
	@mv js2-mode.elc ../.;
	echo "build successful."

install:
	@mkdir bak;
	@mv -f ~/.emacs* bak/.;
	@mv -f ~/.config/emacsfiles bak/.;
	@echo "Old configuration moved into ./bak/"
	@echo "Locate your snippets in ~/.local/share/snippets"
	@mkdir -p ~/.local/share/snippets;
	@ln -s init.el ~/.emacs
	@echo "Copy * into ~/.config/emacsfiles/"
	@mkdir -p ~/.config/emacsfiles
	@cp -rf * ~/.config/emacsfiles/.
	@echo "Done."
