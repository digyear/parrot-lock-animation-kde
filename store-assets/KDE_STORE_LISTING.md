# KDE Store Listing Draft

## Category

Plasma 6 Wallpaper Plugins (category 715)

## Name

Parrot Lock Animation

## Summary

The Parrot OS boot animation adapted as a self-contained KDE Plasma 6 desktop and lock-screen wallpaper plugin.

## Description

Parrot Lock Animation brings the elegant Parrot OS `parrot6` Plymouth boot animation to KDE Plasma 6.

The plugin renders the original 33 PNG frames at 20 FPS on a black background. It is fully self-contained and does not require video codecs, Wallpaper Engine, or an external media player.

### Features

- Original Parrot OS boot-animation artwork
- Smooth 33-frame animation at 20 FPS
- Native KDE Plasma 6 wallpaper plugin
- Works as a desktop wallpaper and a lock-screen background
- Animated preview in Plasma System Settings
- No external runtime dependencies

### Plasma integration note

KDE Plasma 6 implements lock-screen backgrounds through the same `Plasma/Wallpaper` plugin system used by the desktop. The plugin therefore appears in both selectors, but the desktop and lock-screen choices are independent. Changing the desktop wallpaper does not remove the lock-screen animation.

### Installation

Install the downloaded package with:

```bash
kpackagetool6 --type Plasma/Wallpaper --install parrot-lock-animation-1.0.1.plasmoid
```

Select it for the lock screen under:

**System Settings → Security & Privacy → Screen Locking → Configure Appearance → Wallpaper type → Parrot Lock Animation**

### Source and license

Source code: https://github.com/digyear/parrot-lock-animation-kde

Original animation artwork is distributed by Parrot OS in its `desktop-base` package. The included artwork and Plasma adaptation are distributed under GPL-3.0-or-later. This is an unofficial community adaptation and is not an official Parrot Security or KDE product.

## Version

1.0.1

## Changelog

- Initial public release
- Self-contained 33-frame animation at 20 FPS
- Plasma 6 desktop and lock-screen support
- Animated preview in System Settings
- Upstream attribution and GPL-3.0-or-later licensing

## Links

- Homepage/source: https://github.com/digyear/parrot-lock-animation-kde
- Release: https://github.com/digyear/parrot-lock-animation-kde/releases/tag/v1.0.1
- Direct download: https://github.com/digyear/parrot-lock-animation-kde/releases/download/v1.0.1/parrot-lock-animation-1.0.1.plasmoid

## Upload assets

- Main preview: `store-assets/preview.png`
- Animated preview: `store-assets/preview.gif`
- Package: `dist/parrot-lock-animation-1.0.1.plasmoid`
