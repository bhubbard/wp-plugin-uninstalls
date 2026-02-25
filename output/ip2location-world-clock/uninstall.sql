-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip2location_world_clock_type', 'ip2location_world_clock_design', 'ip2location_world_clock_time_format', 'ip2location_world_clock_display_time', 'ip2location_world_clock_display_time2', 'ip2location_world_clock_shortcode_params', 'ip2location_world_clock_database', 'ip2location_world_clock_token', 'ip2location_display_time', 'ip2location_display_time2');

