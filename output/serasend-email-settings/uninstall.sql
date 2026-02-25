-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('serasend_user_login', 'serasend_user_password', 'serasend_last_login_check_status', 'serasend_last_login_check');

