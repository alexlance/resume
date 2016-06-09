#!/bin/bash

export DATE=$(date "+%A %D")
export MY_EMAIL="@alexlance.com"
export JOB_TITLE="*Infrastructure and automation engineer* with ......"
export JOB_REASON="
"
envsubst < resume.md.tpl > resume.md && gimli -file resume.md && rm resume.md
