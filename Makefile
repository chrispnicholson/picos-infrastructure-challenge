hello:
	echo "hello world"

build:
	echo "building"

release: build
	aws --region eu-west-1 cloudformation create-stack --stack-name myteststack --template-body file://infrastructure/stacks/template/main.json

