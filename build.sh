#!/usr/bin/env bash

set -o errexit nounset pipefail

nix-shell -p libxslt --run '
    rm -rf docs
    mkdir docs
    cp CNAME docs/CNAME
    cp about.jpg docs/about.jpg
    cp contact.jpg docs/contact.jpg
    cp style.css docs/style.css
    xsltproc template.xsl index.xml   > docs/index.html
    xsltproc template.xsl resume.xml  > docs/resume.html
    xsltproc template.xsl contact.xml > docs/contact.html
'
