.DEFAULT_GOAL := help

# Load command parameters
RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
$(eval $(RUN_ARGS):;@:)

# Load environment variables
ifneq (,$(wildcard ./.env))
    include dev.env
    export
endif

##help: @ Show commands
help:
	@fgrep -h "##" $(MAKEFILE_LIST)| sort | fgrep -v fgrep | tr -d '##'  | awk 'BEGIN {FS = ":.*?@ "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

##logs: @ Show logs
logs:
	docker-compose logs --follow

##code: @ Open vscode
code: 
	code workspace.code-workspace