# Resume generator

```bash
#!/bin/bash

# checkout the source
git clone git@github.com:alexlance/resume && cd resume

# setup some vars
DATE=$(date "+%A %D")
MY_EMAIL="...@...com"
JOB_TITLE="Dev-Ops Engineer with IBM"
JOB_REASON="The culture at IBM is ..."

# swap the vars in, generate a pdf
# note: envsubst is in the gettext package, and gimli is a gem install
envsubst < resume.md.tpl > resume.md && gimli -file resume.md && rm resume.md
```
