#!/bin/bash

echo "🔧 GitHub Pages Configuration Updater"
echo "======================================"

# Get current directory name (should be the repo name)
REPO_NAME=$(basename $(pwd))
echo "Detected repository name: $REPO_NAME"

# Extract username from git remote
GIT_URL=$(git remote get-url origin)
if [[ $GIT_URL == *"github.com"* ]]; then
    USERNAME=$(echo $GIT_URL | sed 's/.*github\.com[:/]\([^/]*\)\/.*/\1/')
    echo "Detected GitHub username: $USERNAME"
else
    echo "❌ Could not detect GitHub username from git remote"
    echo "Please enter your GitHub username:"
    read USERNAME
fi

echo ""
echo "📝 Updating _config.yml..."

# Create backup
cp _config.yml _config.yml.backup

# Update repository and URL
sed -i "s|repository.*:.*\"academicpages/academicpages.github.io\"|repository               : \"$USERNAME/$REPO_NAME\"|" _config.yml
sed -i "s|url.*:.*https://academicpages.github.io|url                      : https://$USERNAME.github.io|" _config.yml

echo "✅ Configuration updated!"
echo ""
echo "📋 Next steps:"
echo "1. Review the changes in _config.yml"
echo "2. Go to your repository Settings → Pages"
echo "3. Change Source to 'GitHub Actions'"
echo "4. Run: git add . && git commit -m 'Update repository config' && git push"
echo ""
echo "🔍 To revert changes: cp _config.yml.backup _config.yml" 