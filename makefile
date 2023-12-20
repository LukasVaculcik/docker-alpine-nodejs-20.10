help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

docker-build: ## Build docker container.
	docker build -t elvis7777/nodejs-20.10 .
docker-push: ## Push container to docker hub.
	docker push elvis7777/nodejs-20.10