
all: paper.tex paper.bib
	pdflatex paper.tex
	biber paper
	pdflatex paper.tex
	pdflatex paper.tex

paper.tex: paper.lytex
	lilypond-book --pdf paper.lytex

clean:
	ls | grep -v paper.lytex | grep -v paper.bib | grep -v Makefile | grep -v extras | grep -v lilypond-book | xargs rm -r
