-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('under_the_weather_settings', 'under_the_weather_usage_stats', 'under_the_weather_ratelimit_stats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('utw_geocoder_history');
DELETE FROM wp_usermeta WHERE meta_key IN ('utw_geocoder_history');
DELETE FROM wp_termmeta WHERE meta_key IN ('utw_geocoder_history');
DELETE FROM wp_commentmeta WHERE meta_key IN ('utw_geocoder_history');

