

init:
	@docker-compose up -d --build


test:
	@docker-compose exec web odoo -i test_addon --stop-after-init --test-enable --http-port=8090
