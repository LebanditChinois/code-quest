#!/bin/bash
mkdir -p ./build/
echo "Removing old build result..."
rm -r "./build/$1.dncs"
echo "Generating temporary project..."
cp -r "./quest/$1/" "./build/$1.dncs/"
cp "./common/index.csproj" "./build/$1.dncs/"
echo "Building program..."
cd "./build/$1.dncs/"
dotnet build
echo "Running!"
"./bin/Debug/net8.0/index"
#../../build/$1.dncs
exit
