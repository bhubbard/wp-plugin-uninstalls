-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guard_status', 'guard_lpl', 'guard_notices', 'guard_max_attempts', 'guard_lock_duration', 'guard_notify_email', 'guard_pin', 'guard_url', 'guard_custom_text', 'guard_custom_username_text', 'guard_custom_password_text', 'guard_custom_authkey_text');

