build:
	scripts/build.sh

.PHONY: build

deploy: build
	scripts/deploy.sh

.PHONY: deploy
