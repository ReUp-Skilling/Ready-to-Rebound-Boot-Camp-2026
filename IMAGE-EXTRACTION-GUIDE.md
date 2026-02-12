# Image Extraction Guide

Since you don't have access to the original code, you'll need to extract images from the live site.

## Method 1: Browser DevTools (Recommended)

### Step-by-Step:

1. **Visit the site**: https://ready2rebound.com/

2. **Open DevTools**:
   - Chrome/Edge: Press F12 or Right-click → Inspect
   - Firefox: Press F12 or Right-click → Inspect Element
   - Safari: Develop → Show Web Inspector

3. **Find Images**:
   - Click the "Select Element" tool (cursor icon)
   - Click on any image on the page
   - In the Elements/Inspector panel, look for the `<img>` tag
   - Find the `src` attribute with the image URL

4. **Download Images**:
   - Right-click on the image → "Open image in new tab"
   - Right-click → "Save image as..."
   - Save with the appropriate filename

### Images You Need:

#### Hero Image
- Location: Top of page, woman with yellow top and plant
- Save as: `hero-image.jpg`

#### Instructor Photos
- **Tameika Holly** → Save as: `tameika-holly.jpg`
- **Megan Singleton** → Save as: `megan-singleton.jpg`
- **Coach Lee Hopkins** → Save as: `lee-hopkins.jpg`
- **Jori O'Neale** → Save as: `jori-oneale.jpg`
- **Luis G. Noriega** → Save as: `luis-noriega.jpg`

#### Where to Save Them:
Place all images in: `public/images/`

---

## Method 2: Using wget/curl (Advanced)

If you find the image URLs, you can download them via command line:

```bash
# Example (replace with actual URLs)
cd public/images
wget -O hero-image.jpg "https://example.com/hero.jpg"
wget -O tameika-holly.jpg "https://example.com/tameika.jpg"
# ... etc
```

---

## Method 3: Browser Extension

Use a browser extension like:
- **Image Downloader** (Chrome/Edge)
- **Download All Images** (Firefox)

These extensions can bulk-download all images from a page.

---

## Image Optimization Tips

After downloading, consider optimizing images:

### Using Online Tools:
- **TinyPNG**: https://tinypng.com/
- **Squoosh**: https://squoosh.app/

### Using Command Line:
```bash
# Install ImageMagick
brew install imagemagick  # macOS
sudo apt install imagemagick  # Linux

# Resize and optimize
magick hero-image.jpg -resize 1200x -quality 85 hero-image.jpg
```

### Recommended Image Sizes:
- **Hero Image**: 1200px wide, ~800px tall
- **Instructor Photos**: 600px wide, 600px tall (square or 4:3 ratio)

---

## Alternative: Use Placeholder Images

For initial development, you can use placeholder images:

### Free Stock Photos:
- **Unsplash**: https://unsplash.com/
- **Pexels**: https://pexels.com/

### Placeholder Services:
```html
<!-- Temporary placeholders -->
<img src="https://placehold.co/600x400" alt="Placeholder" />
```

Update `src/pages/index.astro` and component files to use placeholders temporarily:

```astro
<img 
  src="https://placehold.co/1200x800/2B2B2B/F4B942?text=Hero+Image" 
  alt="Hero"
/>
```

---

## Troubleshooting

### Images Not Loading?
1. Check file paths are exactly: `public/images/filename.jpg`
2. Verify filenames match (case-sensitive!)
3. Clear browser cache: Ctrl+Shift+R (Cmd+Shift+R on Mac)
4. Check browser console for errors (F12 → Console tab)

### Image Quality Issues?
- Original images might be lower quality
- Consider finding similar professional photos
- Use AI upscaling tools like:
  - Topaz Gigapixel AI
  - Let's Enhance (online)

---

## Copyright Notice

**Important**: Ensure you have permission to use these images. Since you're rebuilding for the original client, you should have rights to use their existing assets. If in doubt, ask the client for:
- Original image files
- Permission to use images
- High-resolution versions

---

## Quick Reference

```bash
# Your target directory structure:
public/
└── images/
    ├── hero-image.jpg
    ├── tameika-holly.jpg
    ├── megan-singleton.jpg
    ├── lee-hopkins.jpg
    ├── jori-oneale.jpg
    └── luis-noriega.jpg
```

Once all images are in place, your site will display correctly!
