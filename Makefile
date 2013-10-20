.PHONY: all test install uninstall clean
CAMLP5=`ocamlfind query camlp5`

VERBOSE=-verbose 0
all:
	ocamlbuild -use-ocamlfind pa_log.cmo $(VERBOSE)

test: all
	ocamlbuild -use-ocamlfind test/test1.byte $(VERBOSE)

install: all
	ocamlfind install logger META _build/pa_log.cm*

uninstall:
	ocamlfind remove logger

clean:
	rm -fr _build ./test1.byte
