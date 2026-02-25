-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('relevatracking_api_key', 'relevatracking_client_id', 'relevatracking_additional_html', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';

