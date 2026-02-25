-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imalisch_settings_license', 'imalisch_settings_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_imalisch_post_license', 'imalisch_post_images_licenses');
DELETE FROM wp_usermeta WHERE meta_key IN ('_imalisch_post_license', 'imalisch_post_images_licenses');
DELETE FROM wp_termmeta WHERE meta_key IN ('_imalisch_post_license', 'imalisch_post_images_licenses');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_imalisch_post_license', 'imalisch_post_images_licenses');

