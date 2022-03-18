update:
	bundle update

build:
	npx tailwindcss -i ./assets/css/main.css -o ./assets/css/styles.css --minify
	bundle exec jekyll build --config _config.yml,_config_development.yml

serve: build
	bundle exec jekyll serve --config _config.yml,_config_development.yml

netlify-cms-proxy:
	npx netlify-cms-proxy-server

run: build serve

edit:
	make -j 2 run netlify-cms-proxy

