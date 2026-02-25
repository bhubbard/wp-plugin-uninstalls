-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('small_image_id', 'medium_image_id', 'large_image_id');

