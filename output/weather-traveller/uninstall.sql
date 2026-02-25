-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_travel_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_travel_location', '_wp_travel_temperature', '_wp_travel_humidity', '_wp_travel_dew', '_wp_travel_speed', '_wp_travel_direction', '_wp_travel_clouds');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_travel_location', '_wp_travel_temperature', '_wp_travel_humidity', '_wp_travel_dew', '_wp_travel_speed', '_wp_travel_direction', '_wp_travel_clouds');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_travel_location', '_wp_travel_temperature', '_wp_travel_humidity', '_wp_travel_dew', '_wp_travel_speed', '_wp_travel_direction', '_wp_travel_clouds');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_travel_location', '_wp_travel_temperature', '_wp_travel_humidity', '_wp_travel_dew', '_wp_travel_speed', '_wp_travel_direction', '_wp_travel_clouds');

