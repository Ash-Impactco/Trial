# Check if Vercel CLI is installed
if (!(Get-Command vercel -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Vercel CLI..."
    npm install -g vercel
}

# Login to Vercel (if not already logged in)
Write-Host "Logging in to Vercel..."
vercel login

# Deploy to Vercel
Write-Host "Deploying to Vercel..."
vercel --prod

# Check deployment status
Write-Host "Checking deployment status..."
vercel ls 