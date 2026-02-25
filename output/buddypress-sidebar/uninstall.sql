-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bps_sidebar_list', 'bps_sidebar_position', 'bps_display_tool');

