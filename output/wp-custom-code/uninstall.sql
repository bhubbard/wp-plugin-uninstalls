-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kfag_wp_custom_css');
DELETE FROM wp_options WHERE option_name LIKE 'kfag_wp_custom_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kfag_wp_custom_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('kfag_wp_custom_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('kfag_wp_custom_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kfag_wp_custom_css');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kfag_wp_custom_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kfag_wp_custom_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kfag_wp_custom_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kfag_wp_custom_%';

