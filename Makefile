all:
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
	@mkdir -p ~/.local/share/snippets;
	@echo "Locate snippets in ~/.local/share/snippets"
	@ln -s init.el ~/