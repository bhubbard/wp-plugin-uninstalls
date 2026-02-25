-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpa_total_logins', 'wpa_login_request_error', 'wppb_general_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpa_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpa_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpa_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpa_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expiration';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expiration';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expiration';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expiration';

