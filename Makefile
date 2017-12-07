.PHONY: help

DAY := 1

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | \
	sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: test
test: ## Run tests for a particular day
	@elixir day_${DAY}_test.exs

.PHONY: format
format: ## Format code with the upcoming formatter
	@docker run \
	--rm --name elixir_formatter -it \
	-v $(shell pwd):/app leifg/elixir:edge \
	sh -c "cd /app && mix format ${FILE}"
