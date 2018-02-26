deploy:
	./deploy.sh
	scp -r build @ico-web01:/var/www/coinjinja.com/api-doc
