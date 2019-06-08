.PHONY: java11 clean

java11:
	cd java11 && docker build -t java11-lambda .
	docker run --rm -v $(shell pwd):/out java11-lambda cp java-dist.zip /out/java-dist.zip
	docker rmi java11-lambda

clean:
	rm -f java-dist.zip
