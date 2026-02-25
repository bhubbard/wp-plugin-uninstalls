-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_options', 'carousel_enable_it', 'carousel_display_exif', 'carousel_display_geo', 'carousel_background_color');

