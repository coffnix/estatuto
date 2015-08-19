#
# Area 31 Statute Makefile 
#

TEX := pdflatex

SRC := src
BIN := bin

DOCUMENT := estatuto

all: estatuto

estatuto: $(SRC)/$(DOCUMENT).tex
	$(TEX) $^
	$(TEX) $^
	$(TEX) $^
	[ -f "$(DOCUMENT).pdf" ] && mv $(DOCUMENT).pdf $(BIN)/$(DOCUMENT).pdf

read: $(BIN)/$(DOCUMENT).pdf
	evince $^

latex: estatuto read

clean:
	@rm -rvf *.aux *.pdf *.dvi *.log *.bbl *.blg *.lof *.lot *.out *.toc
