build:
	npx tailwindcss -i ./assets/css/main.css -o ./assets/css/styles.css --minify

update: build
	bundle update

jekyll: build
	bundle exec jekyll serve --config _config.yml,_config_development.yml

netlify-cms-proxy:
	npx netlify-cms-proxy-server

run: update jekyll

edit:
	make -j 2 jekyll netlify-cms-proxy

