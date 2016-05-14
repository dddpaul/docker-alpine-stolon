.PHONY: all build release

all: build

build:
	@docker build -t dddpaul/stolon .

debug:
	@docker run -i -t --entrypoint=sh dddpaul/stolon

run:
	@docker run -i -P dddpaul/stolon

release: build
	@docker build --tag=dddpaul/stolon:$(shell cat VERSION) .
