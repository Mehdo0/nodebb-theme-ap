# Audemars Piguet Inspired Theme - Design Documentation

## Overview

This NodeBB theme is inspired by the artistic direction of luxury watchmaker Audemars Piguet, creating a sophisticated and luxurious digital experience that evokes "digital high-horology" aesthetics. The design emphasizes precision, exclusivity, and contemporary luxury while respecting deep heritage.

## Design Pillars

### 1. Colors

#### Primary Palette
- **Timber Green (#132A24)**: Deep forest green, almost black - main brand color, used for primary backgrounds
- **Pink Gold (#B7876A)**: Metallic Rose Gold - used for unread indicators, buttons, and important links
- **Bleu Nuit (#2A3B5A)**: Night Blue - secondary accent, used for visited links and subtle UI elements

#### Content Colors
- **White (#FFFFFF)**: Clean, crisp backgrounds for forum posts, categories, and text boxes
- **Off-White (#FAFAFA)**: Subtle alternative background
- **Black (#000000)**: Primary text on light backgrounds
- **White (#FFFFFF)**: Text on dark backgrounds

#### Neutral Grays
Refined gray palette for borders, dividers, and muted text:
- Light Gray (#E0E0E0): Very light borders
- Medium Grays: Various shades for text hierarchy

### 2. Typography

#### Three-Font System

**Logo/Branding:**
- **Font**: Playfair Display (elegant serif)
- **Usage**: Site logo and main branding
- **Style**: Traditional, bespoke, elongated serif similar to Times Roman but unique

**Headings:**
- **Font**: Montserrat or Lato (geometric sans-serif)
- **Usage**: Category titles, thread titles, section headers
- **Weights**: 
  - Light (300) for large category titles
  - Semibold (600-700) for thread titles
- **Style**: Architectural, avant-garde, precise

**Body Text:**
- **Font**: Roboto or Open Sans (highly legible sans-serif)
- **Usage**: Posts, descriptions, general content
- **Weight**: Regular (400)
- **Line Height**: 1.5 (generous spacing for premium feel)
- **Style**: Neutral, elegant, maximum readability

### 3. Luxury Feel & UI Elements

#### Layout Principles
- **Spacious**: Ample white space (or "green space" on dark backgrounds)
- **Minimalist**: Uncluttered, intentional design
- **Breathing Room**: Content areas have generous padding

#### Borders & Dividers
- **Thin Lines**: 1px light gray (#E0E0E0) borders
- **Negative Space**: Prefer spacing over visible borders where possible
- **Sharp Edges**: No rounded corners (border-radius: 0)

#### Tapisserie Pattern
- **Pattern**: Subtle grid of small, raised squares
- **Application**: Main dark green background (#132A24)
- **Opacity**: Very subtle, like a watermark
- **Effect**: Adds depth without distracting

#### Buttons
- **Style**: Flat design with sharp, precise corners
- **Colors**: Pink Gold (#B7876A) or Night Blue (#2A3B5A)
- **Text**: White text on colored buttons
- **Typography**: Uppercase, semibold, letter-spaced

#### Icons
- **Style**: Premium, thin-line icon set
- **Aesthetic**: Sharp and geometric
- **Inspiration**: Echoes the octagonal shape of the Royal Oak

#### User Avatars
- **Shape**: Octagonal or circular
- **Border**: 2px light gray, changes to Pink Gold on hover
- **Style**: Maintains geometric theme

## Implementation Details

### File Structure
```
scss/
  ├── overrides.scss    # Color palette, typography variables, Bootstrap overrides
  └── custom.scss       # Custom styles, Tapisserie pattern, component styling

public/
  └── client.js         # Google Fonts loading, client-side enhancements

theme.scss              # Main theme file, imports all styles
```

### Key SCSS Variables

#### Colors
```scss
$ap-timber-green: #132A24;
$ap-pink-gold: #B7876A;
$ap-bleu-nuit: #2A3B5A;
```

#### Typography
```scss
$font-family-logo: "Playfair Display", serif;
$font-family-heading: "Montserrat", "Lato", sans-serif;
$font-family-body: "Roboto", "Open Sans", sans-serif;
```

#### Layout
```scss
$border-radius: 0;           // Sharp corners
$spacer: 1.5rem;             // Generous spacing
$line-height-base: 1.5;      // Premium line spacing
```

### Custom Classes

#### Utility Classes
- `.text-ap-gold` - Pink Gold text color
- `.text-ap-blue` - Bleu Nuit text color
- `.bg-ap-green` - Timber Green background
- `.bg-ap-gold` - Pink Gold background
- `.bg-ap-blue` - Bleu Nuit background
- `.border-ap-gold` - Pink Gold border
- `.border-ap-blue` - Bleu Nuit border

#### Avatar Classes
- `.avatar-octagon` - Apply octagonal shape to avatars

## Usage

### Installation

1. Install the theme in NodeBB:
```bash
sudo docker-compose exec nodebb npm install git+https://github.com/Mehdo0/nodebb-theme-ap.git
```

2. Activate the theme in NodeBB Admin Panel:
   - Go to Extend → Themes
   - Select "AP Theme"
   - Click "Activate"

### Customization

#### Changing Colors
Edit `scss/overrides.scss` and modify the color variables:
```scss
$ap-timber-green: #132A24;
$ap-pink-gold: #B7876A;
$ap-bleu-nuit: #2A3B5A;
```

#### Changing Fonts
Edit `scss/overrides.scss` and modify the font family variables:
```scss
$font-family-logo: "Your Serif Font", serif;
$font-family-heading: "Your Heading Font", sans-serif;
$font-family-body: "Your Body Font", sans-serif;
```

Update `public/client.js` to load your custom fonts from Google Fonts or another source.

#### Enabling Octagonal Avatars
Uncomment the line in `public/client.js`:
```javascript
$('.avatar').addClass('avatar-octagon');
```

## Design Philosophy

This theme embodies the principles of luxury watchmaking:
- **Precision**: Sharp, exact lines and measurements
- **Heritage**: Elegant typography and traditional elements
- **Contemporary**: Modern, minimalist layout
- **Exclusivity**: Refined color palette and sophisticated details
- **Craftsmanship**: Attention to detail in every element

## Credits

Inspired by the artistic direction of Audemars Piguet, particularly the Royal Oak collection's design language.

