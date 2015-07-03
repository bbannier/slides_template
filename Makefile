SHELL := bash

# uncomment to enable draft mode
OPT_DRAFT := -V fontsize:draft

slides.pdf: slides.pdc
	pandoc -o $@ $< \
		$(OPT_DRAFT) \
		--latex-engine=xelatex \
	  -V colortheme:whale \
	  -t beamer \
	  -H <(echo '\usepackage[iso,american]{isodate}') \
	  -H <(echo '\setbeamertemplate{navigation symbols}{}') \
	  -H <(echo '\setbeamertemplate{footline}[page number]') \
	  -H <(echo '\setbeamertemplate{items}[circle]') \
	  -H <(echo '\usefonttheme{structurebold}') \
	  -V fontsize:xcolor=dvipsnames \
	  -H <(echo '\usecolortheme[named=MidnightBlue]{structure}') \
	  -H <(echo '\usepackage[]{pxfonts}') \
	  -H <(echo '\usepackage[]{microtype}') \
	  -H <(echo '\setsansfont[Path= ./fonts/, Mapping={tex-text}, ItalicFont=EBGaramond12-Italic.ttf,BoldItalicFont=EBGaramond12-Italic.ttf]{EBGaramond-Regular.ttf}') \
	  -H <(echo '\setromanfont[Path= ./fonts/, Mapping={tex-text}, ItalicFont=EBGaramond12-Italic.ttf,BoldItalicFont=EBGaramond12-Italic.ttf]{EBGaramond-Regular.ttf}') \
	  -H <(echo '\setmonofont[Path= ./fonts/, Mapping={tex-text}, ItalicFont=CamingoCode-Italic.ttf,BoldItalicFont=CamingoCode-BoldItalic.ttf,BoldFont=CamingoCode-Bold]{CamingoCode-Regular.ttf}') \
	  -H <(echo '\definecolor{links}{HTML}{646464}') \
	  -H <(echo "\subtitle{}") \
	  -H <(echo '\hypersetup{colorlinks,linkcolor=,urlcolor=links}') \
	  --highlight-style=tango \
	  --highlight-style=zenburn \
	  --highlight-style=haddock \
	  --highlight-style=kate \
	  --highlight-style=pygments \
	  --indented-code-class=Cpp,numberLines


all: slides.pdf

# RoyalBlue MidnightBlue Cerulean Periwinkle YellowGreen
