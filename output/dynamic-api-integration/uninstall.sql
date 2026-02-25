-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dapii_api_url', 'dapii_request_type', 'dapii_api_params');

