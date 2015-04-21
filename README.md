# Resume generator

    DATE=$(date "+%A %D")
    MY_EMAIL="...@...com"
    JOB_TITLE="Dev-Ops Engineer with IBM"
    JOB_REASON="The culture at IBM is ..."
    envsubst < resume.md.tpl > resume.md && gimli -file resume.md && rm resume.md
    xdg-open resume.pdf
