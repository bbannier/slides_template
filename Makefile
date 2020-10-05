SHELL := bash

slides.pdf: slides.md
	pandoc -o $@ $< \
		--pdf-engine=xelatex \
	  -t beamer \
	  -H <(echo '\usepackage[iso,american]{isodate}') \
	  -H <(echo '\setbeamertemplate{navigation symbols}{}') \
	  -H <(echo '\setbeamertemplate{footline}[page number]') \
	  -H <(echo '\setbeamertemplate{items}[circle]') \
	  -H <(echo '\usepackage{appendix}') \
	  -H <(echo '\usepackage[]{pxfonts}') \
	  -H <(echo '\usepackage[]{microtype}') \
	  -H <(echo '\setsansfont[Path= ./fonts/, Mapping={tex-text}, ItalicFont=EBGaramond12-Italic.ttf,BoldItalicFont=EBGaramond12-Italic.ttf]{EBGaramond-Regular.ttf}') \
	  -H <(echo '\setromanfont[Path= ./fonts/, Mapping={tex-text}, ItalicFont=EBGaramond12-Italic.ttf,BoldItalicFont=EBGaramond12-Italic.ttf]{EBGaramond-Regular.ttf}') \
	  -H <(echo '\setmonofont[Path= ./fonts/, Mapping={tex-text}, ItalicFont=iosevka-italic.ttc,BoldItalicFont=iosevka-bolditalic.ttc,BoldFont=iosevka-bold.ttc]{iosevka-regular.ttc}') \
	  -H <(echo '\definecolor{links}{HTML}{646464}') \
	  -H <(echo '\hypersetup{colorlinks,linkcolor=,urlcolor=links}') \
	  --highlight-style=tango \
	  --highlight-style=zenburn \
	  --highlight-style=haddock \
	  --highlight-style=kate \
	  --highlight-style=pygments \
	  --indented-code-class=Cpp,numberLines


all: slides.pdf

# RoyalBlue MidnightBlue Cerulean Periwinkle YellowGreen
