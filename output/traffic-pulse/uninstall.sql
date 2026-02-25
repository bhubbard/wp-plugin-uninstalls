-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trafficpulse_api_token', 'trafficpulse_api_url', 'trafficpulse_plausible_url', 'trafficpulse_auto_insert');

