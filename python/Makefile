.PHONY: build
build:
	rm -rf dist 2>/dev/null
	python3 -m build

.PHONY: upload
upload:
	python3 -m twine upload --verbose dist/*
