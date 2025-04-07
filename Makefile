PACKAGE=llncs
BASENAME=paper
LATEX_COMPILER=pdflatex
LATEX_FLAGS=-shell-escape

BIB_COMPILER=bibtex

TRASH_FILES=*.aux .bb *.bl *.lo *.lo *.nl *.ou *.to *.bc *.run.xml *.bbl *.blg *.fdb_latexmk *.fls *.log *.toc *.synctex.gz *.acn *.glo *.ist *.lof *.lot *.out *.acr *.alg *.glg *.gls *.glsdefs *.lol *.dvi *.ps *.tgz *.zip *.rpi *.hd *.cb *.cb2

SECTIONS=$(wildcard sections/*.tex)

all: paper.pdf

paper.pdf: ${BASENAME}.tex $(PACKAGE).cls $(SECTIONS)
	pdflatex -halt-on-error -shell-escape ${BASENAME}.tex
	bibtex ${BASENAME}
	pdflatex -halt-on-error -shell-escape ${BASENAME}.tex
	pdflatex -halt-on-error -shell-escape ${BASENAME}.tex
	pdflatex -synctex=1 -halt-on-error -shell-escape ${BASENAME}.tex # changebar is still fragile

supplementary.pdf: supplementary.tex
	pdflatex -synctex=1 supplementary.tex
	pdflatex -synctex=1 supplementary.tex

docclean:
	$(RM) $(TRASH_FILES) sections/*.aux

clean: docclean distclean

distclean:
	$(RM) *.pdf

.PHONY: all docclean clean distclean
