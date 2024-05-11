default: build

build:
	pdflatex -file-line-error -halt-on-error -shell-escape thesis.tex
	biber thesis
	pdflatex -file-line-error -halt-on-error -shell-escape thesis.tex
	pdflatex -file-line-error -halt-on-error -shell-escape thesis.tex
	latexmk -c thesis.tex

clean:
	latexmk -C thesis.tex
	rm -f *.log *.aux *.brf *.bbl *.blg *.xml
