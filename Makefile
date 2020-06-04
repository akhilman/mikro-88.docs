COVER_SRC := src/manual/cover-01.png
MANUAL_SRC := $(wildcard src/manual/manual-*.png)
CHANGES_SRC := src/changes.png
STRUCTURAL_SRC := src/structural_scheme.png
SCHEME_SRC := src/scheme.png

default: mikro-88.djvu

mikro-88.pdf: $(COVER_SRC) $(MANUAL_SRC) $(CHANGES_SRC) $(STRUCTURAL_SRC) $(SCHEME_SRC)
	img2pdf \
		-o mikro-88.pdf \
		$(COVER_SRC) \
		$(CHANGES_SRC) \
		$(MANUAL_SRC) \
		$(STRUCTURAL_SRC) \
		$(SCHEME_SRC)

mikro-88.djvu: mikro-88.pdf
	pdf2djvu --jobs=0 -o mikro-88.djvu mikro-88.pdf

clean:
	rm mikro-88.pdf mikro-88.djvu || true
