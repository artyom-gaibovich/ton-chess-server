
build:
	docker compose up -d --build

run:
	docker run -d -p 3001:3001 ton-chess-server-app
