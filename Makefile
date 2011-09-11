%.pdf : %.tex
	pdflatex $<

%.tex : %.pdc
	pandoc -t json --smart $< | pandoc_filter_beamer | pandoc -f json -t latex --template=beamer.template -o $@
