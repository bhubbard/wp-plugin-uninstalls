-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esherpa_login_guard_max_attempts', 'esherpa_login_guard_base_minutes', 'esherpa_login_guard_protected_usernames', 'esherpa_login_guard_disable_xmlrpc', 'esherpa_login_guard_xmlrpc_fake_users', 'esherpa_login_guard_disable_rest_users', 'esherpa_login_guard_block_author_archive', 'esherpa_login_guard_cleanup_days');
DELETE FROM wp_options WHERE option_name LIKE 'esherpa_attempts_%';
DELETE FROM wp_options WHERE option_name LIKE 'esherpa_lockout_%';

