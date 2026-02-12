# Deployment Guide: Vercel & Netlify

This guide walks you through deploying your Ready to Rebound site to production.

---

## Prerequisites

✅ Code pushed to GitHub repository
✅ Images added to `public/images/` directory
✅ Site tested locally with `npm run dev`

---

## Option 1: Deploy to Vercel (Recommended)

Vercel is the company behind Next.js and has excellent Astro support.

### Why Vercel?
- ✅ Automatic deployments on git push
- ✅ Free SSL certificates
- ✅ Global CDN
- ✅ Easy custom domain setup
- ✅ Zero configuration for Astro

### Step-by-Step:

#### 1. Sign Up / Log In
- Visit https://vercel.com
- Click "Sign Up" (or "Log In")
- **Choose "Continue with GitHub"** for easiest setup

#### 2. Import Repository
- Click "Add New..." → "Project"
- Vercel will list your GitHub repositories
- Find and select `ready2rebound`
- Click "Import"

#### 3. Configure Project (Auto-detected!)
Vercel automatically detects Astro projects. You'll see:
- **Framework Preset**: Astro ✅
- **Build Command**: `npm run build` ✅
- **Output Directory**: `dist` ✅
- **Install Command**: `npm install` ✅

Just click **"Deploy"**!

#### 4. Wait for Deployment
- First deployment takes 1-2 minutes
- You'll see build logs in real-time
- When complete, you'll get a live URL!

#### 5. Your Live Site
You'll receive:
- **Production URL**: `your-project.vercel.app`
- **Preview URLs** for each git branch
- **Automatic deployments** on every push to main

### Custom Domain Setup (Optional)

1. In Vercel dashboard, click your project
2. Go to "Settings" → "Domains"
3. Click "Add Domain"
4. Enter your domain (e.g., `ready2rebound.com`)
5. Follow the DNS configuration instructions
6. Vercel will automatically provision SSL

### Environment Variables (If Needed)

If you add environment variables later:
1. Settings → Environment Variables
2. Add key-value pairs
3. Redeploy to apply changes

---

## Option 2: Deploy to Netlify

Netlify is another excellent hosting platform with a generous free tier.

### Why Netlify?
- ✅ Automatic deployments on git push
- ✅ Free SSL certificates
- ✅ Global CDN
- ✅ Easy form handling (useful for contact forms)
- ✅ Great for static sites

### Step-by-Step:

#### 1. Sign Up / Log In
- Visit https://netlify.com
- Click "Sign Up" (or "Log In")
- **Choose "GitHub"** for easiest setup

#### 2. Add New Site
- Click "Add new site" → "Import an existing project"
- Select "Deploy with GitHub"
- Authorize Netlify to access your repositories
- Select `ready2rebound` repository

#### 3. Configure Build Settings
Netlify should auto-detect Astro, but verify:
- **Build command**: `npm run build`
- **Publish directory**: `dist`
- **Branch to deploy**: `main`

Click **"Deploy site"**!

#### 4. Wait for Deployment
- First deployment takes 1-2 minutes
- You'll see build logs
- When complete, you'll get a live URL!

#### 5. Your Live Site
You'll receive:
- **Production URL**: `random-name-123.netlify.app`
- **Deploy previews** for pull requests
- **Automatic deployments** on every push

### Custom Domain Setup (Optional)

1. In Netlify dashboard, click your site
2. Go to "Domain settings"
3. Click "Add custom domain"
4. Enter your domain
5. Follow DNS configuration instructions
6. SSL is automatically provisioned

### Change Site Name
1. Site settings → Site details
2. Click "Change site name"
3. Choose a better subdomain: `ready2rebound.netlify.app`

---

## Comparison: Vercel vs Netlify

| Feature | Vercel | Netlify |
|---------|--------|---------|
| Free SSL | ✅ | ✅ |
| Auto Deploy | ✅ | ✅ |
| Custom Domains | ✅ | ✅ |
| CDN | ✅ | ✅ |
| Build Minutes | Unlimited | 300/month |
| Bandwidth | 100GB | 100GB |
| Astro Support | Excellent | Excellent |
| Forms | Via API | Built-in |
| Best For | Modern frameworks | Static sites |

**Recommendation**: Both are excellent! Choose Vercel if you might add React/Next.js features later. Choose Netlify if you plan to use forms.

---

## Post-Deployment Checklist

After deploying:

### Verify Deployment
- [ ] Visit your live URL
- [ ] Check all pages load correctly
- [ ] Verify all images display
- [ ] Test all links (internal & external)
- [ ] Test on mobile device
- [ ] Check CTA buttons work
- [ ] Verify enrollment link (when implemented)

### Performance Optimization
- [ ] Run Lighthouse audit in Chrome DevTools
  - Target: 90+ Performance score
  - Target: 100 Accessibility score
  - Target: 100 SEO score
- [ ] Check page load speed on 3G
- [ ] Optimize any large images

### SEO Setup
- [ ] Add Google Analytics (optional)
- [ ] Submit sitemap to Google Search Console
- [ ] Add meta descriptions (already in Layout.astro)
- [ ] Set up Google My Business (if applicable)

### Monitoring
- [ ] Set up uptime monitoring (UptimeRobot, Pingdom)
- [ ] Enable error tracking (Sentry, optional)
- [ ] Monitor deployment status emails

---

## Automatic Deployments

Both platforms deploy automatically when you push to GitHub:

```bash
# Make changes locally
# Edit files in Windsurf

# Commit and push
git add .
git commit -m "Updated instructor bios"
git push

# Platform automatically:
# 1. Detects the push
# 2. Pulls latest code
# 3. Runs npm install
# 4. Runs npm run build
# 5. Deploys to CDN
# 6. Sends you a notification
```

**Deployment takes 1-2 minutes on average**

---

## Rollback (If Needed)

### Vercel
1. Go to project dashboard
2. Click "Deployments"
3. Find the previous working deployment
4. Click "..." → "Promote to Production"

### Netlify
1. Go to site dashboard
2. Click "Deploys"
3. Find the previous working deploy
4. Click "Publish deploy"

---

## Troubleshooting

### Build Fails

**Check build logs**:
- Look for error messages in red
- Common issues:
  - Missing images referenced in code
  - Syntax errors in .astro files
  - Missing dependencies

**Solution**:
```bash
# Test build locally first
npm run build

# If it works locally, check:
# - Node version in deployment settings
# - Environment variables
```

### Images Not Loading

**Common causes**:
- Images not in `public/images/` folder
- Incorrect file paths in code
- Image files not committed to git

**Solution**:
```bash
# Verify images are in git
git ls-files public/images/

# If missing, add and commit
git add public/images/
git commit -m "Add missing images"
git push
```

### Deployment Shows Old Version

**Cache issue - solution**:
- Hard refresh: Ctrl+Shift+R (Cmd+Shift+R on Mac)
- Clear browser cache
- Check deployment dashboard for status
- Wait a few minutes for CDN propagation

---

## Getting Help

### Vercel Support
- Documentation: https://vercel.com/docs
- Discord: https://vercel.com/discord
- GitHub Issues: https://github.com/vercel/vercel

### Netlify Support
- Documentation: https://docs.netlify.com
- Community Forum: https://answers.netlify.com
- Support: https://www.netlify.com/support

---

## Next Steps After Deployment

1. ✅ Share live URL with client
2. ✅ Set up custom domain (if purchased)
3. ✅ Configure email for contact form (if added)
4. ✅ Set up payment integration for enrollments
5. ✅ Add Google Analytics tracking code
6. ✅ Test checkout/enrollment process thoroughly

**Your site is now live! 🎉**
