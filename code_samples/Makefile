SHELL:=/bin/bash

.DEFAULT_GOAL := all

.PHONY: all
all: clean check_gfortran build

.PHONY: check_gfortran
check_gfortran:
	@if ! [[ -x $$(command -v gfortran) ]]; then \
        echo >&2 "ERROR: gfortran is not installed. Please install gfortran before continuing."; \
        echo >&2 "  to install run: apt-get update && apt-get -y install gfortran"; \
        exit 1; \
    fi

build:
	mkdir -p bin
	gfortran hello_world.f90 -o bin/hello
	gfortran goodbye_world.f90 -o bin/goodbye


clean:
	rm -rf bin
