-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carousel_enable_it', 'carousel_display_exif', 'carousel_display_geo', 'comments_display', 'fullsize_display', 'carousel_background_color', 'tiled_galleries');

