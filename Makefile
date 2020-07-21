runapp:
	@export FLASK_APP=project/__init__.py && \
		python services/web/manage.py run

build:
	@docker-compose build --no-cache

up:
	@docker-compose up -d

curl:
	@curl http://127.0.0.1:5000
