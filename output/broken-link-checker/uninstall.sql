-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsblc_options', 'blc_settings', 'wpmudev_apikey', 'allowedthemes', 'blc_activation_enabled', 'wpmudev_blc_last_db_upgrade');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('description', 'panels_data', '_wp_trash_meta_comments_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('description', 'panels_data', '_wp_trash_meta_comments_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('description', 'panels_data', '_wp_trash_meta_comments_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('description', 'panels_data', '_wp_trash_meta_comments_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

