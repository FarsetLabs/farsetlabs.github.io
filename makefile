
.PHONY: configure
configure:
	@mkdir -p etc/buildout
	@if [ ! -e "etc/buildout/.installed.cfg" ]; then \
		d=$$(dirname $$(pwd)); \
		py="python"; \
		until [ "$$d" = "/" ]; do \
			if [ -e "$$d/bin/python" ]; then \
				py="$$d/bin/python"; \
				break; \
			fi; \
		d=$$(dirname $$d); \
		done; \
		echo "Bootstrapping with $$($$py -c 'import sys;print(sys.executable)')"; \
		$$py bootstrap.py; \
	fi;
	@./bin/buildout

.PHONY: build
build:
	@./bin/jekyll build

.PHONY: install
install: configure build

.PHONY: serve
serve:
	@cd _site && python -m SimpleHTTPServer 4000

