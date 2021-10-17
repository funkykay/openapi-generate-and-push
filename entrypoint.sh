#!/bin/bash
set -e

echo "$INPUT_GENERATOR"
echo "$INPUT_SPEC"
echo "$INPUT_CONFIG"
echo "$INPUT_REPOSITORY"
echo "$INPUT_REPOSITORY_USER"
echo "$INPUT_REPOSITORY_PASSWORD"

openapi-generator generate \ 
    -g $INPUT_GENERATOR \
    -i $INPUT_SPEC \
    -c $INPUT_CONFIG \
    -o /out

echo "::set-output name=pokemon_name::$pokemon_name"
