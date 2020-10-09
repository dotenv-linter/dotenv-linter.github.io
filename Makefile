build:
	docker build -t dotenv-linter.github.io .

serve:
	docker run -v `pwd`:/site -p 3000:3000 dotenv-linter.github.io docsify serve docs
