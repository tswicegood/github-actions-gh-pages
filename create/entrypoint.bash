#!/bin/bash
set -e

DESTINATION=${DESTINATION:-"./public"}
GH_EMAIL=${GH_EMAIL:-"friendly-bot@example.com"}
GH_NAME=${GH_NAME:-"Friendly GitHub Action Deploy Bot"}
GH_PAGES=${GH_PAGES:-$(git show-ref -s origin/gh-pages)}
GITHUB_SHA=${GITHUB_SHA:-$(git show-ref -s HEAD)}

rm -rf ${DESTINATION}
git clone . "${DESTINATION}"

cd "${DESTINATION}" || exit

git remote set-url origin "https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
git checkout -b gh-pages "$GH_PAGES"
git config user.email "$GH_EMAIL"
git config user.name "$GH_NAME"
