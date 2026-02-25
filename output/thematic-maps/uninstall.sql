-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thematic_maps_options', 'thematic_maps_plugin');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin';

