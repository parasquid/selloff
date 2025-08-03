# Selloff Hugo Theme - Complete Guide

A reusable Hugo theme for creating personal marketplace websites! Here's how to use it:

## Theme Structure

```
themes/selloff-theme/
├── layouts/           # All HTML templates
├── static/           # CSS, images, JavaScript
├── archetypes/       # Content templates
├── exampleSite/      # Demo site configuration
├── theme.yaml        # Theme metadata
└── README.md         # Documentation
```

## Option 1: Use as Local Theme

The theme is installed locally in `themes/selloff-theme/`. Start using it immediately:

```bash
hugo server  # Start the development server
```

## Option 2: Publish as Public Theme

To share your theme with others:

1. **Create a new repository for the theme:**
   ```bash
   cd themes/selloff-theme
   git init
   git add .
   git commit -m "Initial selloff theme"
   git remote add origin https://github.com/yourusername/selloff-theme.git
   git push -u origin main
   ```

2. **Users can then install it:**
   ```bash
   # In their Hugo site
   git submodule add https://github.com/yourusername/selloff-theme.git themes/selloff-theme
   ```

## Option 3: Use as Hugo Module (Modern Approach)

1. **Set up theme as Hugo module:**
   ```bash
   cd themes/selloff-theme
   go mod init github.com/yourusername/selloff-theme
   echo "module github.com/yourusername/selloff-theme" > go.mod
   ```

2. **Users install with:**
   ```bash
   # In their hugo.yaml
   module:
     imports:
       - path: github.com/yourusername/selloff-theme
   ```

## Quick Start for New Users

1. **Create new Hugo site:**
   ```bash
   hugo new site my-selloff-site
   cd my-selloff-site
   ```

2. **Install theme:**
   ```bash
   git submodule add https://github.com/yourusername/selloff-theme.git themes/selloff-theme
   ```

3. **Copy example configuration:**
   ```bash
   cp themes/selloff-theme/exampleSite/hugo.yaml .
   ```

4. **Create first item:**
   ```bash
   hugo new items/my-first-item.md
   ```

5. **Start server:**
   ```bash
   hugo server
   ```

## Site Structure

The recommended site structure:
- ✅ Content in `content/items/`
- ✅ Images in `static/images/`
- ✅ Configuration in `hugo.yaml`
- ✅ Theme in `themes/selloff-theme/`

## Theme Features

- 📱 Responsive design
- 💰 Multi-currency support
- 🏷️ Category system with navigation
- 🛒 Carousell integration
- 📧 8 contact methods with pre-filled messages
- ✅ Sold item tracking
- 🖼️ Image galleries with placeholders

## Customization

Users can override any template by creating the same file in their site's `layouts/` directory.

## Publishing to Hugo Themes Directory

To get listed on https://themes.gohugo.io/:

1. Follow Hugo theme guidelines
2. Add proper documentation
3. Submit pull request to hugo-themes repository

## Development

1. Test the theme thoroughly
2. Add more documentation
3. Create demo content
4. Set up CI/CD for theme testing
5. Submit to Hugo themes directory