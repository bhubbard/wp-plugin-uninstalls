-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultrablocks_google_maps_api_key', 'ultrablocks_mailchimp_api_key', 'ultrablocks_mailchimp_audience_id', 'ultrablocks_open_weather_map_api_key');

