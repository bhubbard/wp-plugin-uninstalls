-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_contract_address', 'default_chain', 'engine_api_endpoint', 'engine_access_token');

