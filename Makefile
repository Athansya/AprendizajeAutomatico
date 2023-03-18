install:
	@python -m pip install -r requirements.txt -r dev-requirements.txt

compile:
	@python -m piptools compile --allow-unsafe --resolver=backtracking -o requirements.txt pyproject.toml
	@python -m piptools compile --extra dev --allow-unsafe --resolver=backtracking -o dev-requirements.txt pyproject.toml

sync:
	@python -m piptools sync requirements.txt dev-requirements.txt
