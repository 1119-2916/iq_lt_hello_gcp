.PHONY: setup
setup:
	poetry install
	poetry export -f requirements.txt --output requirements.txt --without-hashes
	zip -r source.zip main.py requirements.txt hello/secret.py

.PHONY: run
run:
	poetry run python main.py
