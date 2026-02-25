-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themepoints_scrollbar_colors', 'themepoints_scrollbar_width', 'themepoints_scrollbar_radius', 'themepoints_scrollbar_border', 'themepoints_scrollbar_speed', 'themepoints_scrollbar_autohide');

