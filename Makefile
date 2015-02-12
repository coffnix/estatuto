#
# Area 31 Statute Makefile 
#

TEX := pdflatex

SRC := src
BIN := bin

DOCUMENT := estatuto

all: statute

statute: $(SRC)/$(DOCUMENT).tex
	$(TEX) $^
	$(TEX) $^
	$(TEX) $^
	[ -f "$(DOCUMENT).pdf" ] && mv $(DOCUMENT).pdf $(BIN)/$(DOCUMENT).pdf

read: $(BIN)/$(DOCUMENT).pdf
	evince $^

latex: statute read

clean:
	@rm -rvf *.aux *.pdf *.dvi *.log *.bbl *.blg *.lof *.lot *.out *.toc
