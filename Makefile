#Run As: make clean; make; make cleanpdf
FILE=resume

all: $(FILE).pdf

.PHONY: clean

clean:
	rm -rf *.blg 
	rm -rf *.out 
	rm -rf *.bbl 
	rm -rf *.ind
	rm -rf *.ilg
	rm -rf *.loa
	rm -rf *.lof
	rm -rf *.log
	rm -rf *.lot
	rm -rf *.ind
	rm -rf *.idx
	rm -rf *.aux
	rm -rf *.toc
	rm -f ${FILE}.pdf

.PHONY: cleanpdf

cleanpdf:
	rm -rf *.blg 
	rm -rf *.out 
	rm -rf *.bbl 
	rm -rf *.ind
	rm -rf *.ilg
	rm -rf *.loa
	rm -rf *.lof
	rm -rf *.log
	rm -rf *.lot
	rm -rf *.ind
	rm -rf *.idx
	rm -rf *.aux
	rm -rf *.toc

$(FILE).pdf: *.tex
	pdflatex -shell-escape $(FILE).tex


