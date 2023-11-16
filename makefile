include etc/environment.sh

cdk.synth:
	cdk synth
cdk.diff:
	cdk diff
cdk.deploy:
	cdk deploy --context stackName=${CDK_STACK}

sf.invoke:
	aws --profile ${PROFILE} stepfunctions start-execution --state-machine-arn ${O_SFN_ARN} --input file://etc/event.json | jq
sf.list-executions:
	aws --profile ${PROFILE} stepfunctions list-executions --state-machine-arn ${O_SFN_ARN} | jq
