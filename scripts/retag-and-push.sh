#!/bin/bash

echo $1

git tag -d $1

git push origin :refs/tags/$1

git tag -a -m"auto genrated command" v1

git push --follow-tags
