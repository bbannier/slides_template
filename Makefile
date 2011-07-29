all : slides.pdf

%.pdf : %.tex
	pdflatex $<

%.tex : %.txt header.tex
	breakdown < $< > $@
	sed -ie 's/\usepackage{verbdef}/\input{header}/' $@

