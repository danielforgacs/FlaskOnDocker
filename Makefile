runapp:
	@export FLASK_APP=project/__init__.py
	@export DEBUG=1
	@python services/web/manage.py run

build:
	@docker-compose build --no-cache
