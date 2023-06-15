.PHONY: setup
setup:
	poetry install
	poetry export -f requirements.txt --output requirements.txt --without-hashes

.PHONY: run
run:
	poetry run python main.py

# .PHONY: deploy
# deploy: export
