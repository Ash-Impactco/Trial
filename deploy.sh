#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting portfolio deployment...${NC}"

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install git first."
    exit 1
fi

# Initialize git repository if not already initialized
if [ ! -d ".git" ]; then
    echo -e "${BLUE}Initializing git repository...${NC}"
    git init
fi

# Add all files
echo -e "${BLUE}Adding files to git...${NC}"
git add .

# Commit changes
echo -e "${BLUE}Committing changes...${NC}"
git commit -m "Update portfolio website with modern design and features"

# Check if remote exists
if ! git remote | grep -q "origin"; then
    echo -e "${BLUE}Adding remote repository...${NC}"
    git remote add origin https://github.com/Ash-Impactco/Trial.git
fi

# Push to GitHub
echo -e "${BLUE}Pushing to GitHub...${NC}"
git push -u origin main

# Enable GitHub Pages (Note: This requires GitHub CLI)
if command -v gh &> /dev/null; then
    echo -e "${BLUE}Enabling GitHub Pages...${NC}"
    gh repo set-default Ash-Impactco/Trial
    gh repo edit Ash-Impactco/Trial --enable-pages --branch main
else
    echo -e "${BLUE}GitHub CLI not found. Please enable GitHub Pages manually:${NC}"
    echo "1. Go to https://github.com/Ash-Impactco/Trial/settings/pages"
    echo "2. Select 'main' branch as source"
    echo "3. Click 'Save'"
fi

echo -e "${GREEN}Deployment completed!${NC}"
echo -e "${GREEN}Your portfolio will be available at: https://ash-impactco.github.io/Trial${NC}"
echo -e "${BLUE}Note: It may take a few minutes for the changes to be visible on GitHub Pages.${NC}" 