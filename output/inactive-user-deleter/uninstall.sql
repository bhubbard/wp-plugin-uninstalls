-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('UsrInDeleter_lastTrialCheck', 'UsrInDeleter_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_IUD_userBlockedTime', 'last_login_gtm', '_IUD_deltime', '_IUD_cancelcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_IUD_userBlockedTime', 'last_login_gtm', '_IUD_deltime', '_IUD_cancelcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_IUD_userBlockedTime', 'last_login_gtm', '_IUD_deltime', '_IUD_cancelcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_IUD_userBlockedTime', 'last_login_gtm', '_IUD_deltime', '_IUD_cancelcode');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';

