SHELL := bash

%.pdf: %.pdc
	pandoc -o $@ $< \
	  -V graphics \
	  -t beamer \
	  -H <(echo '\setbeamertemplate{navigation symbols}{}\setbeamertemplate{footline}[page number]') \
	  --highlight-style=tango \
	  --indented-code-class=Cpp,numberLines
