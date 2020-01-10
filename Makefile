VERSION = 1.0.5

.PHONY: build push test

build: test
VERSION = 1.0.3

.PHONY: build push test

build:
	docker build -t thedillonb/codehub-push:$(VERSION) .
push: build
	docker push thedillonb/codehub-push:$(VERSION)
test:
	npm t
