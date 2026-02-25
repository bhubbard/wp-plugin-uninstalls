-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('container', 'styles', 'border_radius', 'scrollbar_height', 'color', 'color1');

