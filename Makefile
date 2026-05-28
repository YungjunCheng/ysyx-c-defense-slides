MAIN   := main
SRC    := src
DIST   := dist
LATEXMK := latexmk
FLAGS  := -xelatex -interaction=nonstopmode -output-directory=../$(DIST)

.PHONY: all build clean distclean watch view

all: build

build:
	cd $(SRC) && $(LATEXMK) $(FLAGS) $(MAIN).tex

watch:
	cd $(SRC) && $(LATEXMK) $(FLAGS) -pvc $(MAIN).tex

clean:
	cd $(SRC) && $(LATEXMK) -c $(MAIN).tex && rm -rf ../$(DIST)/*

distclean:
	cd $(SRC) && $(LATEXMK) -C $(MAIN).tex && rm -rf ../$(DIST)/*

view: build
	xdg-open $(DIST)/$(MAIN).pdf
