CHART_DIR ?= charts/sample

.PHONY: lint template
lint:
	helm lint $(CHART_DIR)

template:
	helm template test $(CHART_DIR) > /dev/null
