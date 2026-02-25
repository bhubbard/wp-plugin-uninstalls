-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('images_to_avif_settings', 'images_to_avif_active', 'images_to_avif_methods');

