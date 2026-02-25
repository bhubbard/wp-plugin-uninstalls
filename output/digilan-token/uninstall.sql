-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cityscope_backend', 'digilan_token_secret', 'digilan_token_mode', 'digilan_token_wifi4eu', 'digilan_token_version', 'digilan_twitter_connect');
DELETE FROM wp_options WHERE option_name LIKE 'dlt_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fb_user_access_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('fb_user_access_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('fb_user_access_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fb_user_access_token');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';

