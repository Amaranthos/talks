# .PHONY: slides

md = $(wildcard */*.md)
html = $(md:.md=.html)

slides: $(html)

%.html: %.md
	mkdir -p docs/$*/
	yarn dlx markdown-to-slides -i $? -o docs/$*/index.html
