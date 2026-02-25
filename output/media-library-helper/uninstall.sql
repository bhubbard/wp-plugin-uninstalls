-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdxn_mlh_plugin_activation_time');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rate_the_plugin';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rate_the_plugin';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rate_the_plugin';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rate_the_plugin';

