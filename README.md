# Selloff - Hugo-based Item Listing Site

A Hugo-based website for listing items you want to sell, with responsive design and automatic deployment to Cloudflare Pages.

## Features

- **Responsive grid layout** for item listings
- **Individual item pages** with image galleries  
- **Sold items section** with grayscale effects and overlay
- **Markdown-based content** management
- **Automatic deployment** via GitHub Actions to Cloudflare Pages
- **Mobile-friendly** design

## Getting Started

### Prerequisites

- [Hugo](https://gohugo.io/installation/) (extended version)
- Git

### Local Development

1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   cd selloff
   ```

2. Start the Hugo development server:
   ```bash
   hugo server --baseURL http://localhost:1313
   ```

3. Open http://localhost:1313 in your browser

   **Note**: The `--baseURL` flag overrides the production baseURL for local development, ensuring all links work correctly on localhost.

### Adding New Items

Create a new item using Hugo's archetype:

```bash
hugo new items/your-item-name.md
```

This will create a new markdown file with the proper frontmatter structure:

```yaml
---
title: "Your Item Name"
date: 2025-07-28T10:00:00-05:00
draft: false
price: "100"
condition: "Good"
category: "Electronics"
thumbnail: "/images/your-item-thumb.jpg"
images:
  - "/images/your-item-1.jpg"
  - "/images/your-item-2.jpg"
sold: false
---

## Description

Description of your item here.

## Additional Notes

Any additional notes.
```

### Managing Images

For better organization, create a subfolder for each item's images:

1. **Create a subfolder** for your item: `static/images/[item-slug]/`
   - Example: `static/images/vintage-camera/` or `static/images/icy-dock-expresscage-mb326sp-b/`

2. **Add images** to the item's subfolder:
   ```
   static/images/vintage-camera/
   ├── camera-front.jpg
   ├── camera-back.jpg
   ├── camera-lens.jpg
   └── camera-thumb.jpg
   ```

3. **Reference them** in your item's frontmatter using the subfolder path:
   ```yaml
   thumbnail: "/images/vintage-camera/camera-thumb.jpg"
   images:
     - "/images/vintage-camera/camera-front.jpg"
     - "/images/vintage-camera/camera-back.jpg"
     - "/images/vintage-camera/camera-lens.jpg"
   ```

This organization pattern keeps images grouped by item, making it easier to manage multiple listings and their associated images.

### Deployment

This site can be deployed to GitHub Pages using the included deployment script.

#### Setup GitHub Pages Deployment

1. **Configure GitHub Pages in your repository:**
   - Go to repository Settings → Pages
   - Under "Source", select "Deploy from a branch"
   - Choose the `gh-pages` branch and `/` (root) folder
   - Save the settings

2. **Deploy your site:**
   ```bash
   ./deploy.sh
   ```

3. **What the script does:**
   - Builds the Hugo site with optimizations (`hugo --gc --minify`)
   - Creates a git repository in the `public/` directory
   - Commits all built files with timestamp
   - Force pushes to the `gh-pages` branch

4. **First-time setup:**
   - The script will automatically configure the remote origin
   - GitHub Pages will be available at `https://yourusername.github.io/selloff`

**Note:** Run `./deploy.sh` whenever you want to publish changes to your live site.

## Project Structure

```
├── archetypes/           # Content templates
├── content/              # Site content
│   ├── _index.md        # Homepage content
│   └── items/           # Item listings
├── layouts/              # Hugo templates
│   ├── _default/        # Default templates
│   ├── items/           # Item-specific templates
│   └── index.html       # Homepage template
├── static/               # Static assets
│   ├── css/             # Stylesheets
│   └── images/          # Item images
├── deploy.sh             # GitHub Pages deployment script
└── hugo.yaml            # Hugo configuration
```

## Customization

### Styling

Edit `static/css/style.css` to customize the appearance.

### Configuration

Modify `hugo.yaml` to change site settings like title, description, currency, etc.

#### Currency Configuration

The currency symbol is configurable in `hugo.yaml`:

```yaml
params:
  currency: '$' # Default USD
  # Examples for other currencies:
  # currency: 'RM' # Malaysian Ringgit (MYR)
  # currency: 'S$' # Singapore Dollar (SGD)
  # currency: '¥'  # Japanese Yen (JPY)  
  # currency: '₱'  # Philippine Peso (PHP)
```

Simply change the `currency` value and all prices throughout the site will display with the new symbol.

### Templates

Hugo templates are in the `layouts/` directory:
- `layouts/index.html`: Homepage layout
- `layouts/items/single.html`: Individual item pages
- `layouts/_default/baseof.html`: Base template

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally with `hugo server`
5. Submit a pull request

## License

This project is open source and available under the [MIT License](LICENSE).