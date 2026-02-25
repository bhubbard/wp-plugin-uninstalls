-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wploginsecurity2_ip_whitelist', 'wploginsecurity2');

