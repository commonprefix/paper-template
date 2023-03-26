main.pdf: *.tex *.bib *.sty
	xelatex main.tex && \
	bibtex main && \
	xelatex main.tex && \
	xelatex main.tex && \
	rm -rf *.aux *.log *.out;

minimal:
	xelatex main.tex

clean:
	$(RM)  *.log *.aux \
	*.cfg *.glo *.idx *.toc \
	*.ilg *.ind *.out *.lof \
	*.lot *.bbl *.blg *.gls *.cut *.hd \
	*.dvi *.ps *.thm *.tgz *.zip *.rpi \
	*.d *.fls *.*.make
	$(RM) main.pdf
