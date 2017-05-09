DOC=paper
OS := $(shell uname)

all: compile
ifeq ($(OS),Linux)
	evince $(DOC).pdf
else
	open $(DOC).pdf
endif

compile:
	pdflatex $(DOC).tex
	bibtex $(DOC)
	pdflatex $(DOC).tex
	pdflatex $(DOC).tex

clean:
	rm -f $(DOC).blg $(DOC).bbl $(DOC).aux $(DOC).log $(DOC).pdf
