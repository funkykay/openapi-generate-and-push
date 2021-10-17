#!/bin/bash
set -e

echo "$INPUT_GENERATOR"
echo "$INPUT_SPEC"
echo "$INPUT_CONFIG"
echo "$INPUT_REPOSITORY"

api_url="https://pokeapi.co/api/v2/pokemon/1"
echo $api_url

pokemon_name=$(curl "${api_url}" | jq ".name")
echo $pokemon_name

echo "::set-output name=pokemon_name::$pokemon_name"
