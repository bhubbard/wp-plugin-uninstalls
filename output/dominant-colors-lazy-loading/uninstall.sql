-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dominant_colors_placeholder_format', 'dominant_colors_placeholder_fallback', 'dominant_colors_placeholder_noscript');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dominant_color', 'tiny_thumbnails');
DELETE FROM wp_usermeta WHERE meta_key IN ('dominant_color', 'tiny_thumbnails');
DELETE FROM wp_termmeta WHERE meta_key IN ('dominant_color', 'tiny_thumbnails');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dominant_color', 'tiny_thumbnails');

