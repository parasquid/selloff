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
   hugo server
   ```

3. Open http://localhost:1313 in your browser

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

1. Add images to the `static/images/` directory
2. Reference them in your item's frontmatter:
   - `thumbnail`: Main image for the grid view
   - `images`: Array of detail images for the item page

### Deployment

This site automatically deploys to Cloudflare Pages via GitHub Actions on every push to the main branch.

#### Setup Cloudflare Pages Deployment

1. Create a Cloudflare Pages project
2. Add the following secrets to your GitHub repository:
   - `CLOUDFLARE_API_TOKEN`: Your Cloudflare API token with Pages permissions
   - `CLOUDFLARE_ACCOUNT_ID`: Your Cloudflare account ID
   - `CLOUDFLARE_PROJECT_NAME`: Your Cloudflare Pages project name

3. Push to the main branch to trigger deployment

## Project Structure

```
├── .github/workflows/    # GitHub Actions
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
└── hugo.yaml            # Hugo configuration
```

## Customization

### Styling

Edit `static/css/style.css` to customize the appearance.

### Configuration

Modify `hugo.yaml` to change site settings like title, description, etc.

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