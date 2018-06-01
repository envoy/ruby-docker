NO_COLOR=\033[0m
OK_COLOR=\033[32;01m
ORG=teamenvoy
REPO=ruby
REVISION=$(shell git rev-parse --short HEAD)
BASE_VERSION=$(shell cat VERSION)
VERSION=$(BASE_VERSION)-$(REVISION)

build:
	@echo "$(OK_COLOR)==> Building $(REPO) revision $(VERSION)...$(NO_COLOR)"
	@scripts/build.sh $(ORG) $(REPO) $(VERSION)

.PHONY: build

deploy: build
	@scripts/deploy.sh $(ORG) $(REPO) $(VERSION)

.PHONY: deploy
