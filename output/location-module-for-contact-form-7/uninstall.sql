-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_lat', 'default_lng', 'cf7_mrkr_enable', 'default_zoom', 'default_api_key', 'mapsView', 'cf7_enable_reset', 'cf7_gps_enable', 'cf7_custom_button_text');

