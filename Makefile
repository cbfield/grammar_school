
HOST=127.0.0.1

init:
	pip3 install -r requirements.txt

clean:
	@find . -name '*.pyc' -exec rm -f {} +
	@find . -name '*.pyo' -exec rm -f {} +

test: clean
	@venv/bin/python3 tests/main.py
