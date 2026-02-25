-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glideshow-background-color', 'glideshow-img-height', 'glideshow-border-color', 'glideshow-img-width', 'glideshow-text-color', 'glideshow-title-size', 'glideshow-text-width', 'glideshow-navigation-background-color', 'glideshow-navigation-color', 'glideshow-navigation-active-color', 'glideshow-navigation-active-background-color', 'glideshow-slider-speed', 'glideshow-slider-style', 'glideshow-slider-auto', 'glideshow-slider-duration', 'glideshow-order', 'glideshow-sort', 'glideshow-text-length', 'glideshow-navigation-back', 'glideshow-navigation-next');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content_glider');
DELETE FROM wp_usermeta WHERE meta_key IN ('content_glider');
DELETE FROM wp_termmeta WHERE meta_key IN ('content_glider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content_glider');

