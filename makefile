.PHONY: write-logs write-pods-info
pi-log:
	@echo "Writing logs to pi-logs.txt"
	@mkdir -p logs
	@kubectl logs -n application pi > logs/pi-logs.txt
	@echo "Logs written to logs/pi-logs.txt"

pod-log:
	@echo "Writing pods info to pods-info.txt"
	@mkdir -p logs
	@kubectl get pods -n application akumo-pod -o json > logs/out.json
	@echo "Pods info written to logs/pods-info.txt"