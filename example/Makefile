test: example.pdf
	open -F $<

example.pdf: example.ps
	pstopdf $< > $@

example.ps: example.md
	cat $< \
		| ./roffdown \
		| eqn -Tps \
		| pic -Tps \
		| groff -Tps -m ms > $@

clean:
	rm -f *.pdf *.ps
