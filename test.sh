#!/bin/bash

export DATE=$(date "+%A %D")
export MY_EMAIL="FIXME@EXAMPLE.com"
export JOB_TITLE="*Operations Engineer* with Slack"
export JOB_REASON="Slack has been used with great success at my previous job and I've been exposed to the enthusiasm for the product you've created again and again.
                                                                            
I've just seen you've opened an office in Melbourne and I am bowled over that there appears to be a job opening that may suit my abilities. Please don't hesitate to contact me if you'd like to setup an interview.

"
envsubst < resume.md.tpl > resume.md && gimli -file resume.md && rm resume.md
