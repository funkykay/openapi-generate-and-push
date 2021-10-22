#!/bin/bash
set -e

echo "Openapi generate started."
echo "GENERATOR: $INPUT_GENERATOR"
# echo "SPEC: $INPUT_SPEC"
# echo "CONFIG: $INPUT_CONFIG"
echo "REPOSITORY: $INPUT_REPOSITORY"
# echo "REPOSITORY_USER: $INPUT_REPOSITORY_USER"
# echo "REPOSITORY_PASSWORD: $INPUT_REPOSITORY_PASSWORD"

openapi-generator generate \
    -g "$INPUT_GENERATOR" \
    -i "$INPUT_SPEC" \
    -c "$INPUT_CONFIG" \
    -o "/out"


echo "::set-output name=pokemon_name::$pokemon_name"
