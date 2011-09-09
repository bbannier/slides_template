%.pdf : %.tex
	pdflatex $<

%.tex : %.pdc
	pandoc -t json $< | pandoc_filter_beamer | pandoc -f json -t latex --template=beamer.template -o $@
