PYTHON = python
BASEURL = http://www.nltk.org/nltk_data/packages

pkg_index:
	$(PYTHON) tools/build_pkg_index.py . $(BASEURL) index.xml
	git add index.xml
	git commit -m "updated data index" index.xml

grammars:
	git commit -m "updated grammar files" packages/grammars

