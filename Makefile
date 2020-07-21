runapp:
	@export FLASK_APP=project/__init__.py && \
		export FLASK_DEBUG=1 && \
		python services/web/manage.py run

build:
	@docker-compose build --no-cache

up:
	@docker-compose up -d

down:
	@docker-compose down -v

curl:
	@curl http://127.0.0.1:5000
