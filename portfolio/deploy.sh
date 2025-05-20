#!/bin/bash

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "Installing Vercel CLI..."
    npm install -g vercel
fi

# Login to Vercel (if not already logged in)
echo "Logging in to Vercel..."
vercel login

# Deploy to Vercel
echo "Deploying to Vercel..."
vercel --prod

# Check deployment status
echo "Checking deployment status..."
vercel ls 