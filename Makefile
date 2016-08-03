all: main.pdf

main.pdf: main.tex 1_Introduction.tex 2_Material_and_methods.tex 3_Results.tex 4_Discussion.tex 5_figure_captions.tex refs_energy_budget.bib
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

clean:
	rm -f *.bbl *.blg *.log *.aux *.toc *.fff

