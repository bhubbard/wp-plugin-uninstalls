-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freeukregionshtml5map_options', 'freeukregionshtml5map_goptions', 'freeukregionshtml5map_imported_map_key', 'freefreeukhtml5map_map_data', 'freefreeukhtml5map_nameColor', 'freefreeukhtml5map_nameFontSize');
DELETE FROM wp_options WHERE option_name LIKE 'freefreeukhtml5map_state_info_%';

