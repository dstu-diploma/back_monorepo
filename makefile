setup:
	cp docker-compose.example.yml docker-compose.yml
	git submodule update --recursive --remote

start:
	docker compose up --build

example-start:
	make setup;
	make start;