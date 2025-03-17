#!/bin/bash

set -e  # Exit on error

# Update submodules
echo "Updating submodules..."
git submodule update --remote --merge

# Build the packages

./build.sh

# Run downloader
echo "Running downloader..."
cd downloader
cargo run
cd ..

# Build and run processor
echo "Running processor..."
cd processor
cargo run
cd ..

# Start website
echo "Starting website..."
cd website
npm install  # or yarn
npm run dev  # or however you run your website

