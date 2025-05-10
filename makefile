setup:
	cp docker-compose.example.yml docker-compose.yml
	git submodule update --init --recursive --remote
	chmod +x minio/entrypoint.sh

start:
	docker compose up --build

example-start:
	make setup;
	docker compose -f docker-compose.example.yml up --build