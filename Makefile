
.ONESHELL:

resume.pdf: resume.md.tpl style.css
	export DATE=$$(date  +%-d/%-m/%4Y)
	export MY_EMAIL=""
	export MY_WEB=""
	export JOB_TITLE=""
	envsubst < resume.md.tpl > resume.md
	md2pdf -i resume.md -o resume.pdf -c style.css

local:
	docker run --rm -p 8090:80 -v $$(pwd):/usr/share/nginx/html/ nginx

