update:
	bundle update

jekyll:
	bundle exec jekyll serve

netlify-cms-proxy:
	npx netlify-cms-proxy-server

open-site:
	open http://localhost:4000/land/

open-netlify-cms:
	open http://localhost:4000/land/admin/

run:
	make -j 2 jekyll open-site

edit:
	make -j 3 jekyll netlify-cms-proxy open-netlify-cms

build:
	npx tailwindcss -i ./assets/css/main.css -o ./assets/css/styles.css --minify
