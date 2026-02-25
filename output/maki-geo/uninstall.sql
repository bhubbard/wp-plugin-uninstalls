-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mgeo_geo_rules', 'mgeo_client_server_mode', 'mgeo_api_key', 'mgeo_monthly_requests', 'mgeo_request_limit');

