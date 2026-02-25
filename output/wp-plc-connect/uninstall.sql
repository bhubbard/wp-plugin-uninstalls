-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plcconnect_server_url', 'plcconnect_server_key', 'plcconnect_server_token');

