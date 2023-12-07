DOCNAME=cv

all: DOCNAME

.PHONY: clean

DOCNAME:
	pdflatex $(DOCNAME).tex 
	bibtex J.aux
	bibtex C.aux
# 	bibtex P.aux
	pdflatex $(DOCNAME).tex    
	pdflatex $(DOCNAME).tex                     

view: DOCNAME
	open $(DOCNAME).pdf

clean:
	rm *.aux *.blg *.bbl *.log *.out *.spl
