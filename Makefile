name=index

html: $(name).md
	pandoc \
	--standalone \
	--to=html5 \
	--filter=pandoc-crossref \
	--table-of-contents --toc-depth=2 \
	--number-sections \
	--highlight-style=tango  \
	--listings \
	-V mainfont=monospace \
	-V fontsize=12pt \
	-V backgroundcolor=#F5F5F0 \
	-V monobackgroundcolor=#E5E5E0 \
	-V linestretch=1.25 \
	-V maxwidth=52em \
	-V linkcolor=Blue \
	$(name).md > $(name).html

.PHONY: clean

clean:
	$(RM) $(name).html
