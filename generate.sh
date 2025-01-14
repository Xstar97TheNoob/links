#!/bin/bash

# Clone the repository from GitHub into a temporary directory
git clone https://github.com/xstar97/go-littlelinks-generator.git temp

# Copy the littlelink-generator executable to the current directory
cp temp/output/littlelinks-generator .

# Run the littlelink-generator project
./littlelinks-generator --asset-path "assets/" --config "config.yaml"

# Clean up temporary directory
rm -rf temp
