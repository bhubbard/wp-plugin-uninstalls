-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nws_alerts_version', 'nws_alerts_tables_built', 'nws_alerts_google_maps_api_key', 'nws_alerts_alerts_bar_enabled', 'nws_alerts_alerts_bar_zip', 'nws_alerts_alerts_bar_city', 'nws_alerts_alerts_bar_state', 'nws_alerts_alerts_bar_county', 'nws_alerts_alerts_bar_location_title', 'nws_alerts_alerts_bar_scope', 'nws_alerts_alerts_bar_limit', 'nws_alerts_alerts_bar_fix', 'nws_alerts_populate_tables_args', 'nws_alerts_populate_tables_current_file', 'nws_alerts_populate_tables_current_part');

