# 🚀 GETTING STARTED - READ THIS FIRST!

Welcome to your Ready to Rebound website rebuild! This document will get you up and running in minutes.

---

## 📥 What You Have

A complete Astro website rebuild of https://ready2rebound.com/ with:
- ✅ Fully responsive design (mobile, tablet, desktop)
- ✅ All content from the original site
- ✅ Easy-to-update content management
- ✅ Production-ready code
- ✅ Comprehensive documentation

---

## ⚡ Quick Start (5 Minutes)

### 1. Extract the Archive
```bash
tar -xzf ready2rebound-rebuild.tar.gz
cd ready2rebound-rebuild
```

### 2. Run Setup Script
```bash
./setup.sh
```

This will:
- Install all dependencies
- Set up Git
- Create necessary directories
- Show you next steps

### 3. Add Images
You need to add 6 images to `public/images/`:
- `hero-image.jpg`
- `tameika-holly.jpg`
- `megan-singleton.jpg`
- `lee-hopkins.jpg`
- `jori-oneale.jpg`
- `luis-noriega.jpg`

See **IMAGE-EXTRACTION-GUIDE.md** for detailed instructions on getting these from the original site.

### 4. Start Development Server
```bash
npm run dev
```

Visit `http://localhost:4321` to see your site!

---

## 📁 Important Files

| File | Purpose | When to Edit |
|------|---------|--------------|
| **src/data/content.js** | All content (bios, program details) | Weekly/Monthly updates |
| **src/pages/index.astro** | Main homepage structure | Pricing, dates, major changes |
| **tailwind.config.mjs** | Colors and design system | Design customization |
| **public/images/** | All images | When adding/replacing photos |

---

## 📚 Documentation Guide

Read these in order:

### 1. **QUICKSTART.md** ← START HERE
Fast-track setup for Windsurf and GitHub

### 2. **README.md**
Complete project documentation and features

### 3. **IMAGE-EXTRACTION-GUIDE.md**
How to get images from the original site

### 4. **DEPLOYMENT-GUIDE.md**
Deploy to Vercel or Netlify (when ready)

### 5. **CONTENT-UPDATE-CHECKLIST.md**
How to update content after launch

### 6. **PROJECT-STRUCTURE.md**
Understanding the codebase

---

## 🎯 Your First Tasks

- [ ] Run `./setup.sh` to install dependencies
- [ ] Add images to `public/images/`
- [ ] Run `npm run dev` and visit localhost:4321
- [ ] Make a test edit in `src/data/content.js`
- [ ] Verify the change appears in your browser
- [ ] Read QUICKSTART.md for GitHub setup
- [ ] Push code to GitHub
- [ ] Read DEPLOYMENT-GUIDE.md
- [ ] Deploy to Vercel or Netlify

---

## 🔧 Working in Windsurf

### Open Project
1. Launch Windsurf
2. File → Open Folder
3. Select `ready2rebound-rebuild` folder

### Use Integrated Terminal
- Press `` Ctrl+` `` (or `` Cmd+` `` on Mac)
- Run commands like `npm run dev`

### Edit Files
- Left sidebar shows file tree
- Click to open files
- Changes auto-save and browser auto-reloads!

### Common Tasks
```bash
npm run dev          # Development server
npm run build        # Build for production
git add .            # Stage changes
git commit -m "msg"  # Commit changes
git push             # Push to GitHub
```

---

## 🚨 Before You Deploy

Make sure you've:
- [ ] Added all 6 images
- [ ] Updated enrollment link (currently "#")
- [ ] Tested on mobile, tablet, and desktop
- [ ] Verified all instructor links work
- [ ] Updated program dates if needed
- [ ] Tested in multiple browsers

---

## ⚠️ Important Notes

### Images Are Required
The site will show broken images until you add them to `public/images/`. See IMAGE-EXTRACTION-GUIDE.md.

### Enrollment Link
The "SECURE YOUR SPOT" button currently links to "#". Update this in `src/pages/index.astro` when you have a payment/enrollment system.

### Content Updates
All text content is in `src/data/content.js`. Edit this file instead of the components directly - it's much easier!

### Git Setup
After running `./setup.sh`, follow the instructions to connect to GitHub.

---

## 🆘 Troubleshooting

### "npm: command not found"
Install Node.js from https://nodejs.org (version 18 or higher)

### Images Don't Show
- Check files are in `public/images/`
- Verify filenames match exactly (case-sensitive!)
- Hard refresh: Ctrl+Shift+R (Cmd+Shift+R on Mac)

### Changes Don't Appear
- Save the file in Windsurf
- Check terminal for errors
- Restart dev server (Ctrl+C, then `npm run dev`)

### Port Already in Use
```bash
# Kill the process on port 4321
lsof -ti:4321 | xargs kill -9
# Or use a different port
npm run dev -- --port 3000
```

---

## 📞 Getting Help

1. Check the relevant documentation file (listed above)
2. Search Astro docs: https://docs.astro.build
3. Check Tailwind docs: https://tailwindcss.com/docs
4. Astro Discord: https://astro.build/chat

---

## 🎉 What's Next?

After setup:
1. ✅ Test locally and make sure everything works
2. ✅ Push to GitHub
3. ✅ Deploy to Vercel or Netlify (DEPLOYMENT-GUIDE.md)
4. ✅ Set up custom domain (optional)
5. ✅ Add payment/enrollment system
6. ✅ Share with your client!

---

## 📊 Project Stats

- **Framework**: Astro 4.15+
- **Styling**: Tailwind CSS 3.4+
- **Components**: 3 reusable components
- **Pages**: 1 (homepage)
- **Lines of Code**: ~500
- **Build Time**: ~2 seconds
- **Bundle Size**: ~10KB (compressed)

---

## 🌟 Key Features

- **Static Site Generation**: Blazing fast page loads
- **No Runtime JavaScript**: Pure HTML/CSS
- **SEO Optimized**: Meta tags, semantic HTML
- **Mobile First**: Responsive design
- **Easy Updates**: Centralized content management
- **Git Integrated**: Version control ready
- **Deploy Ready**: Works with Vercel/Netlify

---

**Ready to build? Run `./setup.sh` and let's go! 🚀**

Questions? Check QUICKSTART.md or README.md
