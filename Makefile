.PHONY: all clean android fullstack ats

all: android fullstack ats

android:
	latexmk -xelatex -outdir=dist src/cv-victor-android-es.tex
	latexmk -xelatex -outdir=dist src/cv-victor-android-en.tex

fullstack:
	latexmk -xelatex -outdir=dist src/cv-victor-fullstack-seo-es.tex
	latexmk -xelatex -outdir=dist src/cv-victor-fullstack-seo-en.tex

ats:
	latexmk -xelatex -outdir=dist src/cv-victor-ats-es.tex
	latexmk -xelatex -outdir=dist src/cv-victor-ats-en.tex

clean:
	rm -f dist/*.aux dist/*.log dist/*.out dist/*.toc dist/*.synctex.gz dist/*.fdb_latexmk dist/*.fls dist/*.xdv dist/*.run.xml dist/*.bcf
