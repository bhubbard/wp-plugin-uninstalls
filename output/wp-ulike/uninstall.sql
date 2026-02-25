-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ulike_pro_license_key', 'wp_ulike_use_inline_custom_css', 'wp_ulike_dbVersion', 'disallowed_keys', 'nitropack-autoCachePurge', 'wp_ulike_settings', 'wp_ulike_customize', 'wp_ulike_pro_license_checksum', 'wp_ulike_pro_license_signature', 'wp_ulike_pro_license_data', 'wp_ulike_pro_license_data_fallback', 'widget_wp_ulike', 'wp_ulike_global_avg_likes', 'wp_ulike_pro_license_data', 'wp_ulike_pro_license_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_liked', '_commentliked', '_topicliked');
DELETE FROM wp_usermeta WHERE meta_key IN ('_liked', '_commentliked', '_topicliked');
DELETE FROM wp_termmeta WHERE meta_key IN ('_liked', '_commentliked', '_topicliked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_liked', '_commentliked', '_topicliked');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ulf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ulf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ulf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ulf_errors_%';

