-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scribble_hover', 'scribble_color', 'scribble_thickness', 'scribble_del', 'scribble_intensity');

