-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fvp-settings', 'fvp-version');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fvp_video', '_fvp_image_url', '_thumbnail_id', '_fvp_image', 'dismissed_wp_pointers', 'fvp_activation_notification_ignore');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fvp_video', '_fvp_image_url', '_thumbnail_id', '_fvp_image', 'dismissed_wp_pointers', 'fvp_activation_notification_ignore');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fvp_video', '_fvp_image_url', '_thumbnail_id', '_fvp_image', 'dismissed_wp_pointers', 'fvp_activation_notification_ignore');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fvp_video', '_fvp_image_url', '_thumbnail_id', '_fvp_image', 'dismissed_wp_pointers', 'fvp_activation_notification_ignore');

