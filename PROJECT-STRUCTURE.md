# Project Structure Visualization

```
ready2rebound/
│
├── 📄 README.md                          # Main documentation
├── 📄 QUICKSTART.md                      # Quick setup guide
├── 📄 DEPLOYMENT-GUIDE.md                # Vercel/Netlify deployment
├── 📄 IMAGE-EXTRACTION-GUIDE.md          # How to get images from original site
├── 📄 CONTENT-UPDATE-CHECKLIST.md        # Maintenance guide
│
├── 📄 package.json                       # Dependencies
├── 📄 astro.config.mjs                   # Astro configuration
├── 📄 tailwind.config.mjs                # Tailwind CSS config (colors, fonts)
├── 📄 tsconfig.json                      # TypeScript config
├── 📄 .gitignore                         # Git ignore rules
│
├── 📁 public/                            # Static assets (served as-is)
│   └── 📁 images/                        # ⚠️ ADD YOUR IMAGES HERE
│       ├── hero-image.jpg                # Main hero section image
│       ├── tameika-holly.jpg             # Instructor photos
│       ├── megan-singleton.jpg
│       ├── lee-hopkins.jpg
│       ├── jori-oneale.jpg
│       └── luis-noriega.jpg
│
└── 📁 src/                               # Source code
    │
    ├── 📁 layouts/
    │   └── Layout.astro                  # Base HTML template (fonts, meta tags)
    │
    ├── 📁 pages/
    │   └── index.astro                   # Main homepage (YOUR PRIMARY EDIT FILE)
    │
    ├── 📁 components/
    │   ├── InstructorCard.astro          # Individual instructor profile card
    │   ├── PainPointCard.astro           # Pain point section cards
    │   └── WeekCard.astro                # 4-week program cards
    │
    └── 📁 data/
        └── content.js                    # ⭐ ALL CONTENT DATA (EASY UPDATES!)
                                          # - Instructor bios
                                          # - Week program details
                                          # - Pain points text
```

---

## File Descriptions

### Configuration Files
- **package.json** - Project dependencies and scripts
- **astro.config.mjs** - Astro framework settings
- **tailwind.config.mjs** - Design system (colors, fonts, spacing)
- **tsconfig.json** - TypeScript configuration
- **.gitignore** - Files to exclude from version control

### Documentation Files
- **README.md** - Complete project documentation
- **QUICKSTART.md** - Fast-track setup guide
- **DEPLOYMENT-GUIDE.md** - Production deployment instructions
- **IMAGE-EXTRACTION-GUIDE.md** - How to get images from original site
- **CONTENT-UPDATE-CHECKLIST.md** - Ongoing maintenance guide

### Source Code Structure

#### `/src/layouts/`
Base templates that wrap page content.
- **Layout.astro** - HTML head, fonts, global meta tags

#### `/src/pages/`
Each file becomes a route. `index.astro` = homepage (/)
- **index.astro** - Main landing page with all sections

#### `/src/components/`
Reusable UI components used throughout the site.
- **InstructorCard.astro** - Displays instructor profile with photo, bio, links
- **PainPointCard.astro** - Displays pain point with icon and description
- **WeekCard.astro** - Displays weekly program breakdown with bullet points

#### `/src/data/`
Content separated from presentation for easy updates.
- **content.js** - All text content (instructors, program details, pain points)

### Public Assets

#### `/public/images/`
**⚠️ IMPORTANT**: You must add images here!
- Images in `public/` are served directly (no processing)
- Reference them in code as `/images/filename.jpg`
- See IMAGE-EXTRACTION-GUIDE.md for help getting images

---

## Most Common Edits

### 1. Update Content (Weekly/Monthly)
**File**: `src/data/content.js`
- Change instructor bios
- Update program weeks
- Modify pain points text

### 2. Update Pricing
**File**: `src/pages/index.astro`
- Search for "$97"
- Update in both CTA sections

### 3. Update Dates
**File**: `src/pages/index.astro`
- Search for "January 2026"
- Update to current cohort date

### 4. Change Colors
**File**: `tailwind.config.mjs`
- Modify the `colors` object
- Dev server will auto-reload

### 5. Add/Replace Images
**Folder**: `public/images/`
- Drop new images into folder
- Ensure filenames match code references
- Restart dev server if needed

---

## Build Process

### Development
```bash
npm run dev
# → Starts dev server at localhost:4321
# → Auto-reloads on file changes
# → Shows helpful error messages
```

### Production Build
```bash
npm run build
# → Compiles Astro files to static HTML
# → Processes Tailwind CSS
# → Optimizes for production
# → Outputs to /dist folder
```

### Preview Production Build
```bash
npm run preview
# → Serves the /dist folder locally
# → Test before deploying
```

---

## Deployment Output

When you deploy, Vercel/Netlify will:
1. Run `npm install`
2. Run `npm run build`
3. Take the `/dist` folder
4. Upload to their global CDN
5. Give you a live URL

The `/dist` folder contains:
- Static HTML files (pre-rendered)
- Optimized CSS (Tailwind)
- Images from `/public`
- No JavaScript framework (pure HTML/CSS)

**Result**: Blazingly fast page loads! ⚡

---

## Component Reusability

Components can be reused with different props:

```astro
<!-- InstructorCard usage example -->
<InstructorCard
  name="Jane Doe"
  title="Career Coach"
  bio="Bio text here..."
  image="/images/jane-doe.jpg"
  linkedin="https://linkedin.com/in/janedoe"
/>
```

This makes adding new instructors easy - just add to the array in `content.js`!

---

## Data Flow

```
content.js (data) 
    ↓
index.astro (imports data)
    ↓
Components (receive data as props)
    ↓
HTML Output (rendered to user)
```

**Benefit**: Change data in ONE place, updates everywhere!

---

## Styling System

### Tailwind CSS Classes
Used directly in components:
```astro
<div class="bg-charcoal text-white p-8 rounded-lg">
```

### Custom Colors (from tailwind.config.mjs)
- `bg-charcoal` - Dark backgrounds (#2B2B2B)
- `bg-dark-blue` - Pain points section (#3D5A6C)
- `bg-mint` - CTA buttons (#C8F0E5)
- `text-accent-yellow` - Accent color (#F4B942)

### Responsive Design
Built-in breakpoints:
- `md:grid-cols-2` - 2 columns on medium+ screens
- `lg:text-6xl` - Larger text on large screens
- Mobile-first approach

---

## Git Workflow

```bash
# 1. Make changes in Windsurf
# 2. Test locally
npm run dev

# 3. Commit changes
git add .
git commit -m "Descriptive message"

# 4. Push to GitHub
git push

# 5. Auto-deploy (Vercel/Netlify)
# → Build starts automatically
# → Live in 1-2 minutes
```

---

## Quick Reference Commands

```bash
npm install           # Install dependencies
npm run dev          # Start development server
npm run build        # Build for production
npm run preview      # Preview production build
git status           # Check what changed
git add .            # Stage all changes
git commit -m "msg"  # Commit with message
git push             # Push to GitHub/deploy
```

---

## Need Help?

1. Check **QUICKSTART.md** for setup
2. Check **README.md** for detailed docs
3. Check **DEPLOYMENT-GUIDE.md** for going live
4. Check **CONTENT-UPDATE-CHECKLIST.md** for maintenance
5. Visit https://docs.astro.build for Astro docs
