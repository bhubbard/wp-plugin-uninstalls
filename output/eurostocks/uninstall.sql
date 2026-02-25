-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eurostocks_transmissions', 'eurostocks_makes', 'eurostocks_categories', 'eurostocks_headlight_types', 'eurostocks_fuel_types', 'eurostocks_door_counts', 'eurostocks_exterior_colors', 'eurostocks_climatisations', 'eurostocks_interior_types', 'eurostocks_parking_assistant', 'eurostocks_speed_controls', 'eurostocks-anti-spam', 'eurostocks_cars', 'eurostocks_db_version', 'eurostocks_models');
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_transmissions_%';
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_categories_%';
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_headlight_types_%';
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_fuel_types_%';
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_door_counts_%';
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_exterior_colors_%';
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_climatisations_%';
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_interior_types_%';
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_parking_assistant_%';
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_speed_controls_%';
DELETE FROM wp_options WHERE option_name LIKE '%_cars';
DELETE FROM wp_options WHERE option_name LIKE 'eurostocks_models_%';

