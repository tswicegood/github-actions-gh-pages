#!/bin/bash
set -e

TARGET_BRANCH=${TARGET_BRANCH:-"gh-pages"}
DESTINATION=${DESTINATION:-"./public"}
GITHUB_SHA=${GITHUB_SHA:-$(git show-ref -s HEAD)}

cd "$DESTINATION" || exit # fail if not present

git add -A
git commit -m "Automated deployment to GitHub Pages: ${GITHUB_SHA}" --allow-empty

git push origin "$TARGET_BRANCH"
