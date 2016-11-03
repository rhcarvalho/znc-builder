.PHONY: all
all : DEST ?= $(HOME)
all:
	docker build -t znc-builder docker
	docker run --security-opt label:disable --rm -e PREFIX=$(DEST) -v $(PWD)/_dist:$(DEST) znc-builder
	tar czf znc.tar.gz --transform=s,_dist/,, _dist/*
