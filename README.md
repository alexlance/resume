# Resume generator

### Install the markdown to PDF converter md2pdf

```bash
pyenv install 3.14.3
pyenv virtualenv 3.14.3 md2pdf
pyenv activate md2pdf
pip install md2pdf[cli]
```


```bash
# setup some vars
DATE=$(date "+%A %D")
MY_EMAIL="...@...com"
JOB_TITLE="Dev-Ops Engineer with ... "

# swap the vars in, note: envsubst is in the gettext package
envsubst < resume.md.tpl > resume.md

# generate the PDF from the template file
md2pdf -i resume.md.tpl -c style.css -o resume.pdf
```
