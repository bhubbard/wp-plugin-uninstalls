-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autofields_insert_excerpt', 'autofields_insert_image_custom_field', 'autofields_check_excerpt', 'autofields_check_image_custom_field');
DELETE FROM wp_options WHERE option_name LIKE 'autofields_%';

