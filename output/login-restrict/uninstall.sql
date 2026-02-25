-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login_lmt_blocks', 'login_lmt_retries', 'login_lmt_retries_valid', 'login_lmt_blocks_total', 'site_name', 'login_lmt_logged', 'login_lmt_client_type', 'login_lmt_allowed_retries', 'login_lmt_lock_after_duration', 'login_lmt_allowed_blocks', 'login_lmt_long_duration', 'login_lmt_valid_duration', 'login_lmt_lock_after_notify', 'login_lmt_notify_email_after', 'login_lmt_cookies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('login_lmt_previous_cookie');
DELETE FROM wp_usermeta WHERE meta_key IN ('login_lmt_previous_cookie');
DELETE FROM wp_termmeta WHERE meta_key IN ('login_lmt_previous_cookie');
DELETE FROM wp_commentmeta WHERE meta_key IN ('login_lmt_previous_cookie');

