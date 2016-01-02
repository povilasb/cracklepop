test:
	bundle exec rspec -I $(CURDIR)
.PHONY: test

lint:
	bundle exec rubocop
.PHONY: lint
