-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ust_settings', 'sust_max_login_attempts', 'sust_login_grace_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sust_lastpasswords', 'sust_locked', 'sust_fail_attempts', 'sust_last_login_fail');
DELETE FROM wp_usermeta WHERE meta_key IN ('sust_lastpasswords', 'sust_locked', 'sust_fail_attempts', 'sust_last_login_fail');
DELETE FROM wp_termmeta WHERE meta_key IN ('sust_lastpasswords', 'sust_locked', 'sust_fail_attempts', 'sust_last_login_fail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sust_lastpasswords', 'sust_locked', 'sust_fail_attempts', 'sust_last_login_fail');

