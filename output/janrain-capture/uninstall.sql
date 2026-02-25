-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('janrain_capture_widget_sso_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_access_token';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_access_token';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_access_token';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_access_token';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_refresh_token';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_refresh_token';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_refresh_token';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_refresh_token';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_uuid';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_uuid';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_uuid';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_uuid';

