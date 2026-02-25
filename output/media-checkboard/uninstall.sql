-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('checkerboard_color1', 'checkerboard_color2', 'checkerboard_size');

