-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_flicker_num_images', 'image_flicker_delay');
DELETE FROM wp_options WHERE option_name LIKE 'image_flicker_link_%';
DELETE FROM wp_options WHERE option_name LIKE 'image_flicker_src_%';
DELETE FROM wp_options WHERE option_name LIKE 'image_flicker_desc_%';

