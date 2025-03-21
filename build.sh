#!/bin/bash

set -e

# Build the Downloader
cd downloader
cargo build --release
cd ..

# Build the Processor
cd processor
cargo build --release
cd ..

# Build the Website
cd website
pnpm install
cd ..