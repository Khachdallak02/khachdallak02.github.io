#!/bin/bash

# Force clean rebuild script for Jekyll site
echo "🧹 Cleaning previous build..."
rm -rf _site
rm -rf .sass-cache
rm -rf .jekyll-cache
rm -rf .bundle

echo "📦 Installing dependencies..."
bundle install

echo "🔨 Building site..."
JEKYLL_ENV=production bundle exec jekyll build --incremental

echo "✅ Build complete! Site should be ready for deployment."
echo "🚀 Push to GitHub to trigger deployment..." 