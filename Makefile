.PHONY: default setup l lint clean

default:
	echo "Hello, world!"

setup:
	npm install
	npm install --global prettier prettier-plugin-latex bibtex-tidy

l: lint

lint:
	npx prettier --write --plugin=prettier-plugin-latex --print-width=60 --use-tabs=false "**/*.tex"
	npx bibtex-tidy bibliography.bib --quiet --curly --align=14 --sort --modify

clean:
	git clean -fdX
