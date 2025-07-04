SETS := $(patsubst %/,%,$(wildcard set*/))

.PHONY: all $(SETS)

all: $(SETS)

$(SETS):
	cd $@ && xelatex *.tex && xelatex *.tex
