
SHELL=/bin/sh

DEFAULT_GOAL := all

.SUFFIXES: .md .tex .pdf

BASE=pres
LATEX=$(BASE).tex
SOURCE=$(BASE).md
TARGET=$(BASE).pdf
FILES_WC=$(wildcard $(BASE).*)
FILES_LS=$(shell ls $(BASE).*)
FILES=$(FILES_LS)

GENERATED_S=$(patsubst $(SOURCE), ,$(FILES))
GENERATED_FO=$(filter-out $(SOURCE),$(FILES))
GENERATED=$(GENERATED_FO)




PRES=$(TARGET)





.md.pdf:
	@pandoc -t beamer  $< -o $@

.md.tex:
	@pandoc -t latex  $< -o $@





.PHONY: info

info:
	@echo source: $(SOURCE)
	@echo target: $(TARGET)
	@echo latex target $(LATEX)
	@echo pres: $(PRES)
	@echo files wildcard: $(FILES_WC)
	@echo files ls: $(FILES_LS)
	@echo files: $(FILES)
	@echo generated subst: $(GENERATED_S)
	@echo generated filter: $(GENERATED_FO)
	@echo generated files: $(GENERATED)

.PHONY: $(BASE)
$(BASE): pdf
.PHONY: pdf
pdf: clean $(TARGET)

.PHONY: tex
tex: $(LATEX)

LATEX): $(SOURCE) Makefile
$(TARGET): $(SOURCE) Makefile



.PHONY: clean
show: pres
	@$(VIEWER) $(PRES)


clean:
	@rm -f $(GENERATED)

.PHONY: all

all:$(TARGET)

.PHONY: check
check: checkmake

.PHONY: checkmake
checkmake:
	checkmake Makefile

.PHONY: test
	test: check


