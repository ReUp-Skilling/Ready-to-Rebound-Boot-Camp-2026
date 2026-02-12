# Content Update Checklist

Use this checklist when updating site content.

## Before Launch

### Essential Updates
- [ ] Replace all placeholder images with actual photos
- [ ] Update enrollment link/form (currently just "#")
- [ ] Update program start date (currently "January 2026")
- [ ] Add actual payment/enrollment system integration
- [ ] Test all instructor contact links
- [ ] Verify all social media links

### Optional Enhancements
- [ ] Add Google Analytics tracking
- [ ] Add Facebook Pixel (if using ads)
- [ ] Set up contact form
- [ ] Add email capture for waitlist
- [ ] Configure custom domain
- [ ] Add SSL certificate (usually automatic with Vercel/Netlify)

---

## Regular Content Updates

### Pricing Changes
**File**: `src/pages/index.astro`

Search for: `$97` (appears in 2 places)
- Hero section CTA button
- Final CTA section

### Date Changes
**File**: `src/pages/index.astro`

Search for: `January 2026`
Update to current cohort date

### Adding/Removing Instructors
**File**: `src/data/content.js`

Edit the `instructors` array:
```javascript
{
  id: 6,
  name: "New Instructor Name",
  title: "Their professional title",
  bio: `Full bio text here...`,
  image: "/images/new-instructor.jpg",
  linkedin: "https://linkedin.com/in/username",
  website: "https://example.com",
  email: "email@example.com"
}
```

Don't forget to add their photo to `public/images/`!

### Updating Instructor Bios
**File**: `src/data/content.js`

Find the instructor in the `instructors` array and update their `bio` field.

### Changing Program Weeks
**File**: `src/data/content.js`

Edit the `weekProgram` array. Each week has:
- `week`: Number (1-4)
- `title`: Week theme
- `subtitle`: Compelling tagline
- `description`: What students will learn
- `points`: Array of bullet points

### Updating Pain Points
**File**: `src/data/content.js`

Edit the `painPoints` array. Each pain point has:
- `title`: Short headline
- `icon`: One of: 'newspaper', 'file-text', 'clock'
- `description`: Longer description text

---

## Design Updates

### Changing Colors
**File**: `tailwind.config.mjs`

```javascript
colors: {
  'charcoal': '#2B2B2B',    // Dark backgrounds
  'dark-blue': '#3D5A6C',   // Pain points section
  'mint': '#C8F0E5',        // CTA buttons
  'accent-yellow': '#F4B942', // Accent color
}
```

After changing colors:
1. Save file
2. If dev server is running, it will auto-reload
3. If changes don't appear, restart dev server

### Changing Fonts
**File**: `src/layouts/Layout.astro`

Update the Google Fonts link:
```html
<link href="https://fonts.googleapis.com/css2?family=YourFont:wght@400;700&display=swap" rel="stylesheet">
```

Then update `tailwind.config.mjs`:
```javascript
fontFamily: {
  'sans': ['YourFont', 'system-ui', 'sans-serif'],
}
```

---

## Testing Checklist

Before deploying updates:

### Visual Testing
- [ ] Check all pages on desktop (1920px, 1366px, 1024px)
- [ ] Check all pages on tablet (768px)
- [ ] Check all pages on mobile (375px, 414px)
- [ ] Verify all images load correctly
- [ ] Check text readability and contrast

### Functional Testing
- [ ] Click all navigation links
- [ ] Click all CTA buttons
- [ ] Test all external links (open in new tab?)
- [ ] Verify email links work (mailto:)
- [ ] Test enrollment process (if implemented)

### Performance Testing
- [ ] Run Lighthouse audit (in Chrome DevTools)
- [ ] Check page load speed
- [ ] Verify images are optimized
- [ ] Test on slow 3G connection

### Browser Testing
- [ ] Chrome/Edge (latest)
- [ ] Firefox (latest)
- [ ] Safari (latest)
- [ ] Mobile Safari (iOS)
- [ ] Mobile Chrome (Android)

---

## Deployment Process

### After Making Changes

1. **Test locally**:
   ```bash
   npm run dev
   ```

2. **Build for production**:
   ```bash
   npm run build
   npm run preview  # Test production build locally
   ```

3. **Commit changes**:
   ```bash
   git add .
   git commit -m "Description of what you changed"
   git push
   ```

4. **Verify deployment**:
   - Vercel/Netlify will auto-deploy
   - Check deployment status in dashboard
   - Visit live URL to verify changes

---

## Quick Reference: File Locations

| What to Update | File Location |
|---------------|---------------|
| Instructors | `src/data/content.js` |
| Week Program | `src/data/content.js` |
| Pain Points | `src/data/content.js` |
| Pricing | `src/pages/index.astro` |
| Dates | `src/pages/index.astro` |
| Colors | `tailwind.config.mjs` |
| Fonts | `src/layouts/Layout.astro` |
| Images | `public/images/` |
| Page Title/SEO | `src/layouts/Layout.astro` |

---

## Need Help?

- Check the [README.md](README.md) for detailed setup info
- Check the [QUICKSTART.md](QUICKSTART.md) for common tasks
- Refer to [Astro Documentation](https://docs.astro.build)
