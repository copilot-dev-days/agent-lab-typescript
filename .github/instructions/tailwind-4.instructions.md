---
description: Read before writing any Tailwind CSS to understand the latest v4 features.
---

# Tailwind CSS v4 Development Practices

## Core Philosophy
- CSS-first configuration via `@theme` directive (no `tailwind.config.js`)
- Native CSS features: cascade layers, `@property`, `color-mix()`, logical properties
- Automatic content detection

## Setup
```css
@import "tailwindcss";
```

## @theme Configuration

### Define Tokens
```css
@theme {
  --color-brand: oklch(0.72 0.11 178);
  --font-display: "Inter", sans-serif;
  --breakpoint-tablet: 640px;
}
```
→ Use as: `bg-brand`, `font-display`

### Multi-theme Pattern
```css
@theme inline {
  --color-primary: var(--primary);
}

:root { --primary: #3b82f6; }
.dark { --primary: #60a5fa; }
```
Use `@theme inline` for runtime variable resolution.

### Rules
- Keep @theme variables flat (top-level only)
- No nesting in @media or selectors
- Use :root for non-Tailwind CSS variables

## v4 Features

### Native Opacity
```html
<div class="bg-black/50 text-brand/75">
```

### Container Queries
```html
<div class="@container">
  <div class="@md:text-lg">
</div>
```

### Arbitrary CSS Variables
```html
<div class="fill-[--my-color] w-[--sidebar-width]">
```

### New Utilities
- 3D: `rotate-x-45`, `rotate-y-90`
- Gradients: `bg-gradient-radial`, `bg-gradient-conic`
- Variants: `not-*`, `color-scheme:*`, `@starting-style`

## Migration

### Renamed Classes
- `bg-opacity-50` → `bg-black/50`
- `overflow-ellipsis` → `text-ellipsis`
- `shadow-sm` → `shadow-xs`

## Best Practices
1. Put design tokens in `@theme`
2. Use `:root` for regular CSS variables
3. Trust auto-detection
4. Prefer `w-[--custom]` over complex config

// Seed prompt
// > Fill in a 1-pager copilot instructions (compact, minimal prose), targeted for frontend devs and focused on tailwind v4-specific development essentials; #web_search