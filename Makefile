buildweb:
	cd services/web && docker build --no-cache -t web .

runweb:
	docker run -p 5000:5000 web python manage.py run -h 0.0.0.0

# initdb:
# 	docker-compose exec web python manage.py create_db

compose:
	docker-compose build --no-cache

up:
	docker-compose up

seeddb:
	docker-compose exec web python manage.py seed_db


# runapp:
# 	@export FLASK_APP=project/__init__.py && \
# 		export FLASK_DEBUG=1 && \
# 		python services/web/manage.py run

# build:
# 	@docker-compose build --no-cache

# up:
# 	@docker-compose up -d

# down:
# 	@docker-compose down -v

# curl:
# 	@curl http://127.0.0.1:5000

# psql:
# 	@docker-compose exec db psql -U hello_flask -d hello_flask_dev
