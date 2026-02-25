-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DIANA_GREENCONNECT_client_id', 'DIANA_GREENCONNECT_client_secret', 'DIANA_GREENCONNECT_api_token');

