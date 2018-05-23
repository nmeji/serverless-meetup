ifndef template
	template = aws-nodejs
endif

ifndef project_path
	project_path = testproject
endif

init-project:
	docker-compose run --rm serverless sls create -t ${template} -p ${project_path}

shell:
	docker-compose run --rm serverless bash
