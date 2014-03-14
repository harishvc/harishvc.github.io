#!/bin/sh
# Copy generated tag files & tag cloud

cp ./tag/index.html  tagcloud.html
rm -r ./tag/*
cp -r _site/tag/* ./tag/
mv tagcloud.html ./tag/index.html
