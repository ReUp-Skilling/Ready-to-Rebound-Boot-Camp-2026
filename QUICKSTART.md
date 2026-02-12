# Ready to Rebound - Quick Start Guide

## Step-by-Step Setup in Windsurf

### 1. Open Project in Windsurf
- Launch Windsurf
- File → Open Folder
- Navigate to and select the `ready2rebound-rebuild` folder

### 2. Install Dependencies
Open the Windsurf terminal (Ctrl+` or Cmd+`) and run:
```bash
npm install
```

### 3. Add Your Images
Create placeholder images or download them from the original site:
- Create `public/images/` folder if it doesn't exist
- Add these files:
  - `hero-image.jpg`
  - `tameika-holly.jpg`
  - `megan-singleton.jpg`
  - `lee-hopkins.jpg`
  - `jori-oneale.jpg`
  - `luis-noriega.jpg`

### 4. Start Development Server
```bash
npm run dev
```

The site will be available at `http://localhost:4321`

### 5. Make Your First Edit
Try editing `src/data/content.js` to see how easy it is to update content!

---

## GitHub Setup

### 1. Create GitHub Repository
- Go to https://github.com/new
- Repository name: `ready2rebound`
- Keep it private or public (your choice)
- **DO NOT** check "Initialize with README"
- Click "Create repository"

### 2. Push Your Code
In Windsurf terminal:
```bash
git add .
git commit -m "Initial commit: Ready to Rebound Astro site"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/ready2rebound.git
git push -u origin main
```

---

## Deployment Options

### Option 1: Vercel (Easiest)
1. Visit https://vercel.com
2. Sign in with GitHub
3. Click "New Project"
4. Select `ready2rebound` repository
5. Click "Deploy" (Vercel auto-detects Astro)
6. Done! You'll get a live URL

### Option 2: Netlify
1. Visit https://netlify.com
2. Sign in with GitHub
3. Click "Add new site" → "Import an existing project"
4. Select `ready2rebound` repository
5. Settings will auto-populate
6. Click "Deploy"

---

## Daily Workflow

### Making Changes
1. Edit files in Windsurf
2. Save (changes auto-reload in browser)
3. Test in browser

### Committing Changes
```bash
git add .
git commit -m "Description of changes"
git push
```

Your deployment will automatically update!

---

## Common Tasks

### Update Pricing
Edit `src/pages/index.astro` - search for "$97"

### Update Program Dates
Edit `src/pages/index.astro` - search for "January 2026"

### Add/Remove Instructors
Edit `src/data/content.js` - modify the `instructors` array

### Change Colors
Edit `tailwind.config.mjs` - update the `colors` object

### Update Week Content
Edit `src/data/content.js` - modify the `weekProgram` array

---

## Helpful Commands

```bash
npm run dev          # Start development server
npm run build        # Build for production
npm run preview      # Preview production build
```

---

## Need Help?

- **Astro Docs**: https://docs.astro.build
- **Tailwind Docs**: https://tailwindcss.com/docs
- **Windsurf Support**: Check Windsurf documentation

---

## Next Steps

1. ✅ Set up project in Windsurf
2. ✅ Add images to `public/images/`
3. ✅ Test locally with `npm run dev`
4. ✅ Push to GitHub
5. ✅ Deploy to Vercel or Netlify
6. ✅ Share live URL with client

Good luck! 🚀
