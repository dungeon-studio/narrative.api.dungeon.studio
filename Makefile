.PHONY: all
all: lint

.PHONY: lint
lint:
	find data -name '*.dhall' -exec dhall lint --inplace "{}" \;
