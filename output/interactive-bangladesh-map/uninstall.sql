-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freefreebangladeshhtml5map_nameFontSize', 'freefreebangladeshhtml5map_nameColor', 'freefreebangladeshhtml5map_map_data');
DELETE FROM wp_options WHERE option_name LIKE 'freefreebangladeshhtml5map_state_info_%';

