name=ihpcss2026

all: ${name}.pdf

${name}.pdf: ${name}.md ${name}.theme firstslide.pdf
	./mds -vv $<

clean:
	\rm -rf ${name}.pdf ${name}.tex

