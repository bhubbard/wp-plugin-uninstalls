-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jh_new_login_url', 'aluc_need_flush', 'aluc_runtime_slug', 'aluc_runtime_slug_flush');

