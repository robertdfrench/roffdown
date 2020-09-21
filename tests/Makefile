# Check each of the roff files to ensure that they produce the content we expect them to, and also
# that they are legit roff files (don't have syntax errors, etc).
.SECONDARY:

review:
	find . -type f -name "*.roff" \
		| sed 's/\.roff/.review/' \
		| xargs $(MAKE)

# Open the pdf in preview, forcing it to open a new window
%.review: %.pdf
	open -F $<

# Convert the postscript file into a pdf
%.pdf: %.ps
	pstopdf $< > $@

# Compile the roff example to postcript
%.ps: %.roff
	cat $< \
		| eqn -Tps \
		| groff -Tps -m ms \
		> $@

clean:
	rm -f *.pdf *.ps
