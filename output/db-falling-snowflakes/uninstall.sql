-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('db_snow_start_day', 'db_snow_start_month', 'db_snow_finish_day', 'db_snow_finish_month', 'db_snow_max_number_mobile', 'db_snow_max_number_tablet', 'db_snow_max_number', 'db_snow_min_size_mobile', 'db_snow_min_size_tablet', 'db_snow_min_size', 'db_snow_max_size_mobile', 'db_snow_max_size_tablet', 'db_snow_max_size', 'db_snow_speed_mobile', 'db_snow_speed_tablet', 'db_snow_speed', 'db_snow_color_1', 'db_snow_color_2', 'db_snow_color_3', 'db_snow_color_4', 'db_snow_color_5', 'db_snow_opacity_mobile', 'db_snow_opacity_tablet', 'db_snow_opacity');
DELETE FROM wp_options WHERE option_name LIKE 'db_snow_color_%';

