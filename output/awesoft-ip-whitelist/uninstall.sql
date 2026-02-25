-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awesoft_ip_whitelist_enabled', 'awesoft_ip_whitelist_list');

