name=ihpcss2026

all: ${name}.pdf ${name}_handout.pdf

${name}.pdf: ${name}.md ${name}.theme firstslide.pdf
	./mds -vv $<

${name}_handout.pdf: ${name}.md ${name}.theme firstslide.pdf
	./mds -vvt $<

clean:
	\rm -rf ${name}.pdf ${name}.tex

