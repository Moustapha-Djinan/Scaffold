install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C hollo.py

test:
	python -m pytest -vv --cov=hollo test_hello.py

all: install lint test