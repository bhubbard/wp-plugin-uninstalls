-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('drip_time', 'drip_level', 'image_size_full', 'image_size_large', 'image_size_medium', 'restrict_image_size_full', 'restrict_image_size_large', 'restrict_image_size_medium', 'drip_end_option', 'drip_end', 'drip_end_image_option');

