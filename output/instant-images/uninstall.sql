-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('instant_img_settings_updated', 'active_sitewide_plugins', 'instant_img_settings', 'instant_img_api_settings', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_instant_images_provider', '_instant_images_original_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_instant_images_provider', '_instant_images_original_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_instant_images_provider', '_instant_images_original_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_instant_images_provider', '_instant_images_original_url');

