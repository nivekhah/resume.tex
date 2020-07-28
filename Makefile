.PHONY: create-destination-folder

CC=xelatex
DESTINATION=docs
OUTPUT_FILE=alejandro_beltran_resume.pdf

build:
	@echo "Building…"
	@mkdir -p $(DESTINATION)
	@$(CC) -output-directory=$(DESTINATION) resume.tex > /dev/null 2>&1
	@mv $(DESTINATION)/resume.pdf $(DESTINATION)/$(OUTPUT_FILE)
	@echo "Done building."
