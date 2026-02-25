-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgr_site_token', 'sgr_location_id', 'sgr_location_info', 'skeps_connector_api_error', 'sgr_accounts_cache');

