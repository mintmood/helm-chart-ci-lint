CHART_DIR ?= charts/sample

.PHONY: lint template unittest ct-lint
lint:
	helm lint $(CHART_DIR)

template:
	helm template test $(CHART_DIR) > /dev/null

unittest:
	helm unittest $(CHART_DIR)

ct-lint:
	ct lint --config ct.yaml
