SAM := docker-compose run --rm --service-ports aws-sam-local
SLS := docker-compose run --rm serverless

ifndef EVENT
	EVENT = api
endif

help:
	@$(SAM)

validate: template.yml
	@$(SAM) validate

local-generate-event:
	@$(SAM) local generate-event $(EVENT) > event.json

local-invoke: template.yml
	@$(SAM) local invoke --docker-volume-basedir=$(PWD) $(FUNC)

local-start-api: template.yml
	@$(SAM) local start-api --docker-volume-basedir=$(PWD) --host 0.0.0.0

template.yml:
	@$(SLS) plugin install --name serverless-sam 
	@$(SLS) sam export -o template.yml

init-lambda-nodejs:
	@$(SLS) create -t aws-nodejs

.PHONY: help validate
