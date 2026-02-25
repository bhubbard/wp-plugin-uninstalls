-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freeworldhtml5map_options', 'freeworldhtml5map_goptions', 'freeworldhtml5map_imported_map_key', 'freeworldcontinenthtml5map_map_data', 'freeworldcontinenthtml5map_nameColor', 'freeworldcontinenthtml5map_nameFontSize');
DELETE FROM wp_options WHERE option_name LIKE 'freeworldcontinenthtml5map_state_info_%';

