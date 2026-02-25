-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carbon_custom_sidebars', 'wc_db_version', '_wc_openweatherapikey', '_wc_latitude', '_wc_longitude', '_wc_cache_hours', '_wc_openweather_unit', '_wc_time_zone', 'wc_weather_data', 'wc_weather_last_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

