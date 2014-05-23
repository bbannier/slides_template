SHELL := bash

# uncomment to enable draft mode
#OPT_DRAFT := -V fontsize:draft

%.pdf: %.pdc
	pandoc -o $@ $< \
	  -V graphics \
	  $(OPT_DRAFT) \
	  -t beamer \
	  -H <(echo '\setbeamertemplate{navigation symbols}{}\setbeamertemplate{footline}[frame number]') \
	  -H <(echo '\usepackage{cmbright}') \
	  -H <(echo '\usepackage{mathpazo}') \
	  -H <(echo '\usepackage[iso,american]{isodate}') \
	  --highlight-style=tango \
	  --indented-code-class=Cpp,numberLines

all: slides.pdf
