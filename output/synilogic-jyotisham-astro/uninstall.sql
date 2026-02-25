-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jyotisham_api_key', 'jyotisham_google_maps_key', 'jyotisham_api_status', 'jyotisham_usage_stats', 'jyotisham_api_calls_made', 'jyotisham_api_last_call', 'jyotisham_plugin_version');

