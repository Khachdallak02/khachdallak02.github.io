# Complete Fix Guide for GitHub Pages Deployment

## 🚨 CRITICAL ISSUE IDENTIFIED

The main problem is in `_config.yml` line 17:
```yaml
repository: "academicpages/academicpages.github.io"  # ❌ WRONG
```

This should be your actual repository name!

## 🔧 STEP-BY-STEP FIX

### Step 1: Update Repository Configuration
**Edit `_config.yml` and change line 17:**
```yaml
# Replace with your actual repository name
repository: "YOUR_USERNAME/YOUR_REPO_NAME"
```

**Example:**
```yaml
repository: "khachdallak02/khachdallak02.github.io"
```

### Step 2: Update URL Configuration
**Also update line 16:**
```yaml
url: "https://YOUR_USERNAME.github.io"
```

**Example:**
```yaml
url: "https://khachdallak02.github.io"
```

### Step 3: Enable GitHub Actions for Pages
1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section
4. Under **Source**, change from "Deploy from a branch" to **"GitHub Actions"**
5. Click **Save**

### Step 4: Force Clean Rebuild
Run these commands locally:
```bash
# Clean everything
rm -rf _site
rm -rf .sass-cache
rm -rf .jekyll-cache
rm -rf .bundle

# Reinstall and build
bundle install
bundle exec jekyll build

# Commit and push
git add .
git commit -m "Fix repository configuration and force rebuild"
git push origin main
```

### Step 5: Monitor Deployment
1. Go to **Actions** tab in your repository
2. Look for "Jekyll site CI" workflow
3. Wait for it to complete successfully
4. Check the deployment URL

## 🎯 EXPECTED RESULTS

After fixing the repository configuration, you should see:
- ✅ **Space Grotesk font** applied to all text
- ✅ **Space Mono font** for code blocks
- ✅ **AMOLED dark mode** (#000000 background)
- ✅ **Armenian flag 🇦🇲** displaying properly
- ✅ **"🇦🇲 Khachatur Dallakyan"** in all titles

## 🔍 TROUBLESHOOTING

### If changes still don't appear:
1. **Clear browser cache** (Ctrl+Shift+R)
2. **Check Actions tab** for build errors
3. **Wait 10-15 minutes** for full deployment
4. **Verify repository settings** are correct

### Common Issues:
- **Wrong repository name** → Update `_config.yml`
- **GitHub Pages not using Actions** → Change source in Settings
- **Cached old version** → Clear browser cache
- **Build errors** → Check Actions tab for details

## 📋 CHECKLIST

- [ ] Updated repository name in `_config.yml`
- [ ] Updated URL in `_config.yml`
- [ ] Enabled GitHub Actions in Pages settings
- [ ] Pushed all changes to GitHub
- [ ] Monitored Actions workflow completion
- [ ] Cleared browser cache
- [ ] Verified changes appear online

## ⏱️ TIMELINE

- **Build time**: 3-5 minutes
- **Deployment time**: 2-3 minutes
- **Full effect**: 5-10 minutes total
- **Cache clearing**: Immediate after Ctrl+Shift+R 