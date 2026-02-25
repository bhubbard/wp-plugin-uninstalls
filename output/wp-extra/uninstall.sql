-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disallowed_keys', 'wp_extra', 'active_sitewide_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'last_login');

