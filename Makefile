update:
	bundle update

build:
	npx tailwindcss -i ./assets/css/main.css -o ./assets/css/styles.css --minify
	bundle exec jekyll build --config _config.yml,_config_development.yml

serve: build
	bundle exec jekyll serve --config _config.yml,_config_development.yml

proxy:
	npx netlify-cms-proxy-server

