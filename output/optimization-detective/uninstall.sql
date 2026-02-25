-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('od_rest_api_unavailable', 'active_sitewide_plugins', 'od_rest_api_health_check_response');

