#!/bin/bash
set -e

echo "$INPUT_GENERATOR"
echo "$INPUT_SPEC"
echo "$INPUT_CONFIG"
echo "$INPUT_REPOSITORY"
echo "$INPUT_REPOSITORY_USER"
echo "$INPUT_REPOSITORY_PASSWORD"

wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/5.1.0/openapi-generator-cli-5.1.0.jar -O openapi-generator-cli.jar

java -jar openapi-generator-cli.jar version

echo "::set-output name=pokemon_name::$pokemon_name"
