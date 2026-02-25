-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xmlrpc_control_status', 'xmlrpc_control_rate_limiting_enabled');

