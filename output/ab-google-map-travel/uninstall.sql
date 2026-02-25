-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('language', 'latitude', 'longitude', 'map_width', 'map_height', 'zoom', 'curr_format', 'day_more_five_fare', 'day_less_five_fare', 'more_five_fare', 'less_five_fare');

