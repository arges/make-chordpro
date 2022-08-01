#.PHONY: build
#build:
#	docker build . -t chordpro

CHOS=$(wildcard *.cho)
PDFS=$(CHOS:.cho=.pdf)
all: $(PDFS)

%.pdf: %.cho
	sudo docker run -it -v ${PWD}:/chords chordpro -- /chords/$<

.PHONY: clean
clean:
	rm -f *.pdf
