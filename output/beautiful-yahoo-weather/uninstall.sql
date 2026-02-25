-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('byw_lang', 'byw_name_city', 'byw_woeid', 'byw_image_set', 'byw_unit', 'byw_bgcolor', 'byw_css', 'byw_mylang', 'byw_smylang', 'byw_fontsize', 'byw_rtlorltr', 'plugin_error', 'weather_feed');

