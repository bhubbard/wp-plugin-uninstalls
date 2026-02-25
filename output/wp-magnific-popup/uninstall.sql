-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmp_image_settings', 'wpmp_gallery_settings', 'wpmp_iframe_settings', 'wpmp_div_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

