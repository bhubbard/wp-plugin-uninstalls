-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'googlesitekit_adsense_settings', 'googlesitekit_analytics_settings', 'googlesitekit_active_modules', 'googlesitekit-active-modules', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_amp_queried_object', '_edit_lock', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_amp_queried_object', '_edit_lock', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_amp_queried_object', '_edit_lock', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_amp_queried_object', '_edit_lock', '_wp_attachment_image_alt');

