.PHONY: venv
venv:
	python3 -m venv venv

.PHONY: build-python
build-python:
	python3 -m build