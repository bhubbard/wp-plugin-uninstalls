-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reacg_installed_time', 'reacg_do_activation_redirect', 'reacg_optin_shown', 'woocommerce_currency_pos');
DELETE FROM wp_options WHERE option_name LIKE '%_status';
DELETE FROM wp_options WHERE option_name LIKE 'reacg_options%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gallery_timestamp', 'options_timestamp', 'images_ids', 'images_count', 'additional_data', 'exif', 'action_url', '_wp_attachment_image_alt', 'edit_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('gallery_timestamp', 'options_timestamp', 'images_ids', 'images_count', 'additional_data', 'exif', 'action_url', '_wp_attachment_image_alt', 'edit_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('gallery_timestamp', 'options_timestamp', 'images_ids', 'images_count', 'additional_data', 'exif', 'action_url', '_wp_attachment_image_alt', 'edit_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gallery_timestamp', 'options_timestamp', 'images_ids', 'images_count', 'additional_data', 'exif', 'action_url', '_wp_attachment_image_alt', 'edit_count');

