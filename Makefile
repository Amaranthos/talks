# .PHONY: slides

md = $(wildcard */*.md)
html = $(md:.md=.html)

slides: $(html)

%.html: %.md
	mkdir -p docs/$*/
	yarn dlx markdown-to-slides $? -o docs/$*/index.html
