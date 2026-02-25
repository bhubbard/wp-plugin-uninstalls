-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('transporters_map_api_key', 'transporters_url_site_1', 'transporters_url_site_2', 'transporters_url_site_3', 'transporters_url_site_4', 'transporters_url_site_5');
DELETE FROM wp_options WHERE option_name LIKE 'ts_tab_options_%';
DELETE FROM wp_options WHERE option_name LIKE 'transporters_display_mode_%';
DELETE FROM wp_options WHERE option_name LIKE 'transporters_url_site_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_delayformload_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_ampm_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_fixed_route_custom_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_viastops_%';
DELETE FROM wp_options WHERE option_name LIKE 'transporters_custom_css_%';
DELETE FROM wp_options WHERE option_name LIKE 'transporters_custom_js_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_custom_background_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_custom_text_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_custom_title_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_custom_border_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_custom_button_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_vehicle_groups_%';
DELETE FROM wp_options WHERE option_name LIKE 'transporters_return_journey_%';
DELETE FROM wp_options WHERE option_name LIKE 'transporters_profile_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_show_notes_%';
DELETE FROM wp_options WHERE option_name LIKE 'transporters_custom_js_after1_%';
DELETE FROM wp_options WHERE option_name LIKE 'transporters_custom_js_after2_%';
DELETE FROM wp_options WHERE option_name LIKE 'transporters_custom_js_back_%';
DELETE FROM wp_options WHERE option_name LIKE 'ts_fixed_route_%';

