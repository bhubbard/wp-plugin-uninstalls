-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pps_scroll_up', 'pps_style_sheet', 'pps_show_all_link', 'pps_nav_position', 'pps_loop_slides', 'pps_count_position');

