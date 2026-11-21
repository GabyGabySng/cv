#!/bin/sh
# Compile les deux versions du CV avec la CLI typst (https://typst.app/open-source/)
set -e
cd "$(dirname "$0")"
mkdir -p site
typst compile --font-path fonts cv.typ CV_Gabrielle_Seng_complet.pdf
typst compile --font-path fonts --input public=1 cv.typ site/CV_Gabrielle_Seng.pdf
echo "OK : site/CV_Gabrielle_Seng.pdf (public) et CV_Gabrielle_Seng_complet.pdf (envoi recruteurs)"
