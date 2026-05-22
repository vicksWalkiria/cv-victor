.PHONY: all clean android fullstack ats

all: android fullstack ats

android:
	latexmk -xelatex -outdir=dist src/cv-victor-android.tex

fullstack:
	latexmk -xelatex -outdir=dist src/cv-victor-fullstack-seo.tex

ats:
	latexmk -xelatex -outdir=dist src/cv-victor-ats.tex

clean:
	rm -f dist/*.aux dist/*.log dist/*.out dist/*.toc dist/*.synctex.gz dist/*.fdb_latexmk dist/*.fls dist/*.xdv dist/*.run.xml dist/*.bcf
