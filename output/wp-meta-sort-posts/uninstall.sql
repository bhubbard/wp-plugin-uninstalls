-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msp_theme_support', 'msp_loop_file', 'msp_nav_location');

