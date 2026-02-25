-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('suc_active', 'suc_by_role', 'suc_role_to_redirect', 'suc_ip_whitelist');

