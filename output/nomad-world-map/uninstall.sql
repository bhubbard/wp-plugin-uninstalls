-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nwm_settings', 'nwm_post_ids', 'nwm_route_order', 'nwm_map_ids', 'nwm_version', 'nwm_locations');
DELETE FROM wp_options WHERE option_name LIKE 'nwm_locations_%';
DELETE FROM wp_options WHERE option_name LIKE 'nwm_route_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'nwm_widget_%';

