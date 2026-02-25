-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ghl_clnt_id', 'ghl_clnt_scrt', 'ghl_location_connected');

