SHELL := /usr/bin/zsh

init:
	@[[ ! -d venv ]] && python3 -m virtualenv venv || :
	@venv/bin/pip3 install -r requirements.txt

clean:
	@find . -name '*.pyc' -exec rm -f {} +
	@find . -name '*.pyo' -exec rm -f {} +

test: clean
	@venv/bin/python3 tests/main.py

run:
	@venv/bin/python3 main.py
