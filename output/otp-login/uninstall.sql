-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otpl_enable', 'otpl_register_url', 'otpl_login_attempt', 'otpl_login_locktime', 'otpl_redirect_url', 'otpl_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('otpl_login_attempts', 'otpl_last_failed_time', 'emilotp');
DELETE FROM wp_usermeta WHERE meta_key IN ('otpl_login_attempts', 'otpl_last_failed_time', 'emilotp');
DELETE FROM wp_termmeta WHERE meta_key IN ('otpl_login_attempts', 'otpl_last_failed_time', 'emilotp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('otpl_login_attempts', 'otpl_last_failed_time', 'emilotp');

