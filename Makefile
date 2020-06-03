COVER_SRC := src/manual/cover-01.png
MANUAL_SRC := $(wildcard src/manual/manual-*.png)
CHANGES_SRC := src/changes.png
STRUCTURAL_SRC := src/structural_scheme.png
SCHEME_SRC := src/scheme.png

default: micro-88.djvu

micro-88.pdf: $(COVER_SRC) $(MANUAL_SRC) $(CHANGES_SRC) $(STRUCTURAL_SRC) $(SCHEME_SRC)
	img2pdf \
		-o micro-88.pdf \
		$(COVER_SRC) \
		$(CHANGES_SRC) \
		$(MANUAL_SRC) \
		$(STRUCTURAL_SRC) \
		$(SCHEME_SRC)

micro-88.djvu: micro-88.pdf
	pdf2djvu micro-88.pdf > micro-88.djvu

clean:
	rm micro-88.pdf micro-88.djvu || true
