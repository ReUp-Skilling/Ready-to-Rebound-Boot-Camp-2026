# Ready to Rebound - Website Rebuild

A modern, fully responsive website for the Ready to Rebound career bootcamp program, built with Astro and Tailwind CSS.

## 🚀 Project Structure

```
ready2rebound/
├── public/
│   └── images/              # Place all instructor photos and hero image here
│       ├── hero-image.jpg
│       ├── tameika-holly.jpg
│       ├── megan-singleton.jpg
│       ├── lee-hopkins.jpg
│       ├── jori-oneale.jpg
│       └── luis-noriega.jpg
├── src/
│   ├── components/
│   │   ├── InstructorCard.astro
│   │   ├── PainPointCard.astro
│   │   └── WeekCard.astro
│   ├── data/
│   │   └── content.js       # All content data (easy to update!)
│   ├── layouts/
│   │   └── Layout.astro
│   └── pages/
│       └── index.astro
├── astro.config.mjs
├── tailwind.config.mjs
└── package.json
```

## 📋 Prerequisites

- Node.js 18+ installed
- Git installed
- GitHub account

## 🛠️ Setup Instructions

### 1. Clone or Initialize Repository

```bash
# If starting fresh, navigate to your project directory
cd /path/to/ready2rebound-rebuild

# Initialize git
git init

# Create .gitignore (already included)
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Add Images

Place all instructor photos and the hero image in the `public/images/` directory:

- `hero-image.jpg` - Main hero section image
- `tameika-holly.jpg` - Tameika Holly profile photo
- `megan-singleton.jpg` - Megan Singleton profile photo
- `lee-hopkins.jpg` - Coach Lee Hopkins profile photo
- `jori-oneale.jpg` - Jori O'Neale profile photo
- `luis-noriega.jpg` - Luis G. Noriega profile photo

**Note:** You'll need to extract these images from the original site or get them from your client.

### 4. Run Development Server

```bash
npm run dev
```

Visit `http://localhost:4321` to see your site.

## 📝 Updating Content

All content is centralized in `src/data/content.js` for easy updates:

### Update Instructors
Edit the `instructors` array with new bios, links, or contact info.

### Update Program Weeks
Modify the `weekProgram` array to change week descriptions or add/remove points.

### Update Pain Points
Edit the `painPoints` array to change the messaging in the "If You're Worried" section.

## 🎨 Customizing Styles

Colors are defined in `tailwind.config.mjs`:

```javascript
colors: {
  'charcoal': '#2B2B2B',    // Dark background
  'dark-blue': '#3D5A6C',   // Pain points section
  'mint': '#C8F0E5',        // CTA buttons
  'accent-yellow': '#F4B942', // Accent color
}
```

## 🚀 Building for Production

```bash
npm run build
```

This creates a `dist/` folder with your production-ready site.

## 📦 Deployment

### Deploy to Vercel (Recommended)

1. Push your code to GitHub
2. Visit [vercel.com](https://vercel.com)
3. Click "New Project"
4. Import your GitHub repository
5. Vercel auto-detects Astro - just click "Deploy"

### Deploy to Netlify

1. Push your code to GitHub
2. Visit [netlify.com](https://netlify.com)
3. Click "Add new site" → "Import an existing project"
4. Connect to GitHub and select your repo
5. Build command: `npm run build`
6. Publish directory: `dist`
7. Click "Deploy"

## 🔗 GitHub Setup

```bash
# Create a new repository on GitHub (don't initialize with README)
# Then run these commands:

git add .
git commit -m "Initial commit: Ready to Rebound site"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/ready2rebound.git
git push -u origin main
```

## 🎯 Features Implemented

✅ Fully responsive design (mobile, tablet, desktop)
✅ Hero section with CTA
✅ Pain points section
✅ 4-week program breakdown
✅ Instructor profiles with bios and links
✅ Final CTA section
✅ Easy content management
✅ Optimized images with lazy loading
✅ SEO-friendly structure
✅ Fast page loads (Astro static generation)

## 🔧 Windsurf Integration

To work on this in Windsurf:

1. Open Windsurf
2. File → Open Folder → Select `ready2rebound-rebuild`
3. Windsurf will detect the project structure
4. Use the terminal in Windsurf to run `npm install` and `npm run dev`

## 📸 Extracting Images from Original Site

You'll need to download the images from the original site. Use browser DevTools:

1. Visit https://ready2rebound.com/
2. Right-click on each image → "Open image in new tab"
3. Save each image with the appropriate filename
4. Place in `public/images/` directory

## 🆘 Troubleshooting

### Images Not Showing
- Ensure images are in `public/images/` directory
- Check that filenames match exactly (case-sensitive)
- Try clearing browser cache

### Styles Not Loading
- Run `npm install` to ensure Tailwind is installed
- Check that `tailwind.config.mjs` exists
- Restart dev server

### Build Errors
- Ensure Node.js 18+ is installed
- Delete `node_modules` and `package-lock.json`, then run `npm install` again

## 📞 Support

For questions about Astro, visit: https://docs.astro.build

## 📄 License

This project is built for the Ready to Rebound bootcamp program.
