-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('im4wp_flash_messages', 'im4wp', 'im4wp_lite_version', 'im4wp_version', 'im4wp_default_form_id', 'im4wp_form_stylesheets', 'im4wp_groupings_map', 'im4wp_iyspanel_lists', 'im4wp_iyspanel_brands', 'im4wp_iyspanel_originators', 'im4wp_api_key_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_im4wp_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_im4wp_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_im4wp_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_im4wp_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'text_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'text_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'text_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'text_%';

