#!/bin/bash

# Clone the repository from GitHub into a temporary directory
git clone https://github.com/xstar97/go-littlelinks-generator.git temp

# Copy the littlelink-generator executable to the current directory
cp temp/output/littlelink-generator .

# Run the littlelink-generator project
./littlelink-generator --asset-path "assets/" --config "links.json"

# Check if the build directory exists in the temporary directory
if [ -d "temp/build" ]; then
    # Copy the build directory to the root directory
    cp -r temp/build /build
fi

# Clean up temporary directory
rm -rf temp
