MPATH=config/databases/migrations
DSN=postgres://root:secret@localhost:5433/golang_template?sslmode=disable
PG_USER=root
PG_PASSWORD=secret
PG_PORT=5433
DB_NAME=golang_template
CONT_NAME=golang_template
# Testing purpose on docker


run:
	nodemon --exec go run main.go --signal SIGTERM

postgres-start:
	docker run --name $(CONT_NAME) -p $(PG_PORT):5432 -e POSTGRES_USER=$(PG_USER) -e POSTGRES_PASSWORD=$(PG_PASSWORD) -d postgres:14-alpine

createdb:
	docker exec -it $(CONT_NAME) createdb --username=$(PG_USER) --owner=$(PG_USER) $(DB_NAME)

dropdb:
	docker exec -it $(CONT_NAME) dropdb $(DB_NAME)

postgres-stop:
	docker stop $(CONT_NAME)

postgres-delete:
	docker rm $(CONT_NAME)

migrate-up:
	migrate -path $(MPATH) -database "$(DSN)" up

migrate-down:
	migrate -path $(MPATH) -database "$(DSN)" down