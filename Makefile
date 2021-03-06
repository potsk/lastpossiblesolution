clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +

test: clean-pyc
	pytest --cov=./

codecov:
	codecov

ci: test codecov
