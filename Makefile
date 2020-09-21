test:
	find tests -type f -name "*.md" -not -name "README.md" \
		| sed 's/\.md/.test/' \
		| xargs $(MAKE)

review:
	$(MAKE) -C tests review

%.test: %.md %.roff
	cat $< | ./roffdown | diff $*.roff /dev/stdin
