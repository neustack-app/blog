#!/bin/bash

if [[ $TRAVIS_BRANCH == 'dev' ]] ; then
  cd _site
  git init

  git config user.name "NeuStack BlogAdmin"
  git config user.email "self@neustack.app"

  git add .
  git commit -m "Deploy"

#   git remote rm origin
  # We redirect any output to
  # /dev/null to hide any sensitive credential data that might otherwise be exposed.
#   git remote add origin  
  git push --force "https://${github_user}:${github_key}@${blog_target}" master:gh-pages --quiet > /dev/null 2>&1
else
  echo 'Invalid branch. You can only deploy from master.'
  exit 1
fi