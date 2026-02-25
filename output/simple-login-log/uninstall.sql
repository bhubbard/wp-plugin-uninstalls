-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sll_db_ver', 'users_page_login_log_per_page', 'simple_login_log');

