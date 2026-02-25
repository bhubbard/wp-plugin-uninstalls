-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dprx_find_us_mode', 'dprx_find_us_mtypes', 'dprx_find_us_apikey', 'dprx_find_us_width', 'dprx_find_us_height', 'dprx_find_us_ctype', 'dprx_find_us_location', 'dprx_find_us_location_end_lat', 'dprx_find_us_location_end_lon');

