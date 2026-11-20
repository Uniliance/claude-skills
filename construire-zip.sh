#!/bin/sh
# Reconstruit compte-rendu.zip (le skill à téléverser dans Claude) à partir du dossier compte-rendu/.
# À relancer à chaque nouvelle version, puis à pousser avec le reste.
set -e
cd "$(dirname "$0")"
rm -f compte-rendu.zip
zip -q -r compte-rendu.zip compte-rendu -x "compte-rendu/TUTORIEL.md"
echo "compte-rendu.zip reconstruit"
