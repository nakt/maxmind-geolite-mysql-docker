all:
	@echo "Notihg to do"

init:
	@data/download_geolite2_database.sh

clean:
	rm -fv data/*.csv
	sudo rm -rfv mysql/db/*

up: init
	docker-compose up

