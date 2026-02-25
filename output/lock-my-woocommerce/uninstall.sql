-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cp_lock_wc_password', 'cp_lock_wc_allow_users', 'cp_lock_wc_message');

