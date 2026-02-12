#!/bin/bash

# Ready to Rebound - Setup Script
# This script helps you set up the project quickly

set -e  # Exit on error

echo "🚀 Ready to Rebound - Setup Script"
echo "=================================="
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed!"
    echo "   Please install Node.js 18+ from https://nodejs.org"
    exit 1
fi

echo "✅ Node.js $(node --version) detected"
echo ""

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ package.json not found!"
    echo "   Please run this script from the project root directory"
    exit 1
fi

echo "📦 Installing dependencies..."
npm install

echo ""
echo "✅ Dependencies installed successfully!"
echo ""

# Create images directory if it doesn't exist
if [ ! -d "public/images" ]; then
    echo "📁 Creating images directory..."
    mkdir -p public/images
    echo "Place your images here:" > public/images/README.txt
    echo "- hero-image.jpg" >> public/images/README.txt
    echo "- tameika-holly.jpg" >> public/images/README.txt
    echo "- megan-singleton.jpg" >> public/images/README.txt
    echo "- lee-hopkins.jpg" >> public/images/README.txt
    echo "- jori-oneale.jpg" >> public/images/README.txt
    echo "- luis-noriega.jpg" >> public/images/README.txt
fi

echo ""
echo "⚠️  IMPORTANT: Add Images!"
echo "   Place your images in: public/images/"
echo "   See IMAGE-EXTRACTION-GUIDE.md for help"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "🔧 Initializing Git repository..."
    git init
    echo "✅ Git initialized"
    echo ""
    echo "📝 Next steps for GitHub:"
    echo "   1. Create a new repository on GitHub"
    echo "   2. Run these commands:"
    echo "      git add ."
    echo "      git commit -m 'Initial commit: Ready to Rebound site'"
    echo "      git remote add origin https://github.com/YOUR_USERNAME/ready2rebound.git"
    echo "      git push -u origin main"
else
    echo "✅ Git repository already initialized"
fi

echo ""
echo "=================================="
echo "🎉 Setup Complete!"
echo "=================================="
echo ""
echo "Quick Start:"
echo "  1. Add images to public/images/"
echo "  2. Run: npm run dev"
echo "  3. Visit: http://localhost:4321"
echo ""
echo "Documentation:"
echo "  • README.md - Full documentation"
echo "  • QUICKSTART.md - Quick setup guide"
echo "  • DEPLOYMENT-GUIDE.md - Deploy to production"
echo "  • CONTENT-UPDATE-CHECKLIST.md - Update content"
echo ""
echo "Commands:"
echo "  npm run dev      - Start development server"
echo "  npm run build    - Build for production"
echo "  npm run preview  - Preview production build"
echo ""
echo "Happy coding! 🚀"
