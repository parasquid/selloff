#!/bin/bash

# Build the Hugo site
echo "Building Hugo site..."
hugo --gc --minify

# Check if build was successful
if [ $? -ne 0 ]; then
    echo "Hugo build failed!"
    exit 1
fi

# Navigate to the public directory
cd public

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    git init
    git remote add origin $(git -C .. remote get-url origin)
fi

# Add all files and commit
git add .
git commit -m "Deploy site - $(date)"

# Push to gh-pages branch
git push -f origin HEAD:gh-pages

echo "Site deployed to gh-pages branch!"
echo "Configure GitHub Pages to deploy from the gh-pages branch in your repository settings."