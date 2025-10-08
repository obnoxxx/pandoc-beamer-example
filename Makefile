
SHELL=/bin/sh

SOURCE=pres.md
PRES_FILES=$(wildcard pres.*)

GENERATED=$(patsubst $(SOURCE),  , $(PRES_FILES))



.SUFFIXES: .md .pdf

PRES=pres.pdf





.md.tex:
	pandoc -t beamer  $< -o  $@




.PHONY: info

info:
		@echo generated files: $(GENERATED)

.PHONY: pres
pres: pdf
.PHONY: pdf
pdf: clean $(PRES)



.PHONY: clean
show: pres
	@$(VIEWER) pres.pdf


clean:
	@rm -f $(GENERATED)

.PHONY: all

all: pres

.PHONY: check
check: checkmake 

.PHONY: checkmake
checkmake:
	checkmake Makefile

.PHONY: test
	test: check


