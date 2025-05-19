# Colors for output
$Green = [System.ConsoleColor]::Green
$Blue = [System.ConsoleColor]::Blue

Write-Host "Starting portfolio deployment..." -ForegroundColor $Blue

# Check if git is installed
try {
    git --version | Out-Null
} catch {
    Write-Host "Git is not installed. Please install git first."
    exit 1
}

# Initialize git repository if not already initialized
if (-not (Test-Path ".git")) {
    Write-Host "Initializing git repository..." -ForegroundColor $Blue
    git init
}

# Add all files
Write-Host "Adding files to git..." -ForegroundColor $Blue
git add .

# Commit changes
Write-Host "Committing changes..." -ForegroundColor $Blue
git commit -m "Update portfolio website with modern design and features"

# Check if remote exists
$remoteExists = git remote | Select-String "origin"
if (-not $remoteExists) {
    Write-Host "Adding remote repository..." -ForegroundColor $Blue
    git remote add origin https://github.com/Ash-Impactco/Trial.git
}

# Push to GitHub
Write-Host "Pushing to GitHub..." -ForegroundColor $Blue
git push -u origin main

# Check if GitHub CLI is installed
try {
    gh --version | Out-Null
    Write-Host "Enabling GitHub Pages..." -ForegroundColor $Blue
    gh repo set-default Ash-Impactco/Trial
    gh repo edit Ash-Impactco/Trial --enable-pages --branch main
} catch {
    Write-Host "GitHub CLI not found. Please enable GitHub Pages manually:" -ForegroundColor $Blue
    Write-Host "1. Go to https://github.com/Ash-Impactco/Trial/settings/pages"
    Write-Host "2. Select 'main' branch as source"
    Write-Host "3. Click 'Save'"
}

Write-Host "Deployment completed!" -ForegroundColor $Green
Write-Host "Your portfolio will be available at: https://ash-impactco.github.io/Trial" -ForegroundColor $Green
Write-Host "Note: It may take a few minutes for the changes to be visible on GitHub Pages." -ForegroundColor $Blue 