#!/bin/bash

bundle install
bundle exec jekyll build 
# htmlproofer ./_site --url-ignore www.youtube.com
