all:
	pdflatex thesis.tex
	bibtex thesis.aux
	pdflatex thesis.tex
	pdflatex thesis.tex

clean:
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.toc
	rm -rf *.backup
	rm -rf *.out
	rm -rf *-swp
	rm -rf *.bcf
	rm -rf *.blg
	rm -rf *.run.xml
	rm -rf *-blx.bib
	rm -rf *.bbl
	rm -rf *.pyg
	rm -rf *.backup
	rm -rf *.lof

distclean: clean
	rm -rf *.pdf

.PHONY: clean distclean
