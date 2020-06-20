
HOST=127.0.0.1

init:
	pip3 install -r requirements.txt

clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +

test: clean
	python test.py

run:
	python manage.py runserver

docker-run:
	docker build \
		--file=Dockerfile \
		--tag=grammar_school \
	docker-run \
		--detach=false \
		--publish=$(HOST):8080 \
		grammar_school
