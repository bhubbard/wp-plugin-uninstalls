-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slideshow-category-id', 'slideshow-post-number', 'order-posts', 'sort-posts', 'slideshow-text-length', 'slideshow-auto', 'slideshow-speed', 'slideshow-duration', 'slideshow-vertical', 'slideshow-continous', 'slideshow-width', 'slideshow-height', 'slideshow-button', 'slideshow-border-width', 'slideshow-border-color', 'slideshow-text-font', 'slideshow-title-font-size', 'slideshow-title-font-color', 'slideshow-title-font-color-hover', 'slideshow-text-font-size', 'slideshow-text-font-color');

