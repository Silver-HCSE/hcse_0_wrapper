#!/bin/bash

set -e  # Exit on error

git submodule init

# Update submodules
echo "Updating submodules..."
git submodule update --remote --merge 

# Build the packages
./build.sh

# Prepare an output directory
mkdir -p data

# Run downloader
echo "Running downloader..."
cd data
../downloader/target/release/hcse_parser
cd ..

# Build and run processor
echo "Running processor..."
cd data
../processor/target/release/hcse_analyzer
cd ..

# Update the website repo with the new article and rating database
cd data
cp -f article_database.json ../website/src/assets/article_database.json
cp -f rating_database.json ../website/src/assets/rating_database.json

# Start website
echo "Starting website..."
cd website
pnpm run start

