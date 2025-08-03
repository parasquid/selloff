# Selloff Theme

A Hugo theme for creating a personal marketplace to sell your items online with multi-platform integration.

## Features

- 📱 **Responsive Design** - Works on all devices
- 💰 **Multi-Currency Support** - Configure your preferred currency
- 🏷️ **Category System** - Organize items by categories
- 🛒 **Multi-Platform Integration** - Link to Carousell and other marketplaces
- 📧 **Contact System** - 8 different contact methods with pre-created messages
- ✅ **Sold Item Tracking** - Separate section for sold items with visual indicators
- 🖼️ **Image Galleries** - Multiple images per item with placeholder fallbacks

## Quick Start

1. **Install the theme:**
   ```bash
   git submodule add https://github.com/yourname/selloff-theme.git themes/selloff-theme
   ```

2. **Configure your site:**
   ```yaml
   # hugo.yaml
   baseURL: 'https://yoursite.com'
   languageCode: 'en-us'
   title: 'Your Selloff Site'
   theme: 'selloff-theme'

   params:
     description: 'Items I want to sell'
     currency: '$' # Your preferred currency symbol
     
     # Contact information (optional - omit to hide contact section)
     contact:
       email: 'seller@example.com'
       whatsapp: '+1234567890'
       telegram: '@yourusername'
       instagram: '@yourusername'
       x: '@yourusername'
       carousell: 'yourusername'
       facebook: 'your.profile'
       phone: '+1 (234) 567-8900'

   taxonomies:
     category: 'categories'
   ```

3. **Create your first item:**
   ```bash
   hugo new items/my-first-item.md
   ```

## Demo Site

Check out the `exampleSite/` directory for a complete demonstration of all theme features including:
- Sample items across multiple categories
- Carousell integration examples
- Contact system demonstration
- Sold items showcase

To run the demo locally:
```bash
cd themes/selloff-theme/exampleSite
hugo server --themesDir ../.. --theme selloff-theme
```

## Item Configuration

Each item supports these frontmatter fields:

```yaml
---
title: "Item Name"
date: 2025-01-01T10:00:00-05:00
draft: false
price: "50"
condition: "Excellent"
categories: ["Electronics", "Furniture"]
thumbnail: "/images/item-thumb.jpg"
images:
  - "/images/item-1.jpg"
  - "/images/item-2.jpg"
carousell: "https://carousell.com/p/your-listing-url"  # Optional
sold: false
---

## Description
Your item description here...
```

## Currency Examples

```yaml
params:
  currency: '$'     # USD
  # currency: 'RM'  # Malaysian Ringgit
  # currency: 'S$'  # Singapore Dollar
  # currency: '¥'   # Japanese Yen
  # currency: '₱'   # Philippine Peso
```

## Contact Methods

The theme supports 8 contact methods with automatic message pre-filling:

- **Email** - Pre-filled subject and body
- **WhatsApp** - Direct message with item details
- **Telegram** - Pre-created message
- **Instagram** - Profile link
- **X (Twitter)** - Compose tweet about item
- **Carousell** - Profile link
- **Facebook** - Message with item URL
- **Phone** - Direct call link

## Deployment

The theme works great with:
- GitHub Pages
- Netlify
- Cloudflare Pages
- Any static hosting service

## Customization

### Colors
The theme uses CSS custom properties for easy customization. Override in your `static/css/custom.css`:

```css
:root {
  --primary-color: #3498db;
  --carousell-color: #ff5722;
  --sold-color: #e74c3c;
}
```

### Layouts
You can override any layout by creating the same file structure in your site's `layouts/` directory.

## License

AGPL-3.0 License - see LICENSE file for details.