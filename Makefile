MY_EMAIL :=
MY_WEB :=
JOB_URL :=

.ONESHELL:

resume.pdf: resume.md.tpl style.css
	export DATE=$$(date  +%-d/%-m/%4Y)
	export MY_EMAIL="$(MY_EMAIL)"
	export MY_WEB="$(MY_WEB)"
	export JOB_URL="$(JOB_URL)"
	envsubst < resume.md.tpl > resume.md
	md2pdf -i resume.md -o resume.pdf -c style.css

cover.pdf: cover.md.tpl style.css
	export DATE=$$(date  +%-d/%-m/%4Y)
	export MY_EMAIL="$(MY_EMAIL)"
	export MY_WEB="$(MY_WEB)"
	export JOB_URL="$(JOB_URL)"
	envsubst < cover.md.tpl > cover.md
	md2pdf -i cover.md -o cover.pdf -c style.css


local:
	docker run --rm -p 8090:80 -v $$(pwd):/usr/share/nginx/html/ nginx

