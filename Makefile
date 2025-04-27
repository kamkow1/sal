SALR_OPTIONS ?=

all: test2

test2: test2.o
	ld.lld -o $@ $<

test2.o: test2.sal
	./salr build $< $(SALR_OPTIONS)

clean: test2.o test2
	rm $^

.PHONY: all clean

