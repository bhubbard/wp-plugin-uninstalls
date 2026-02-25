-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freeaustraliahtml5map_options', 'freeaustraliahtml5map_goptions', 'freeaustraliahtml5map_imported_map_key', 'freefreeaustraliahtml5map_map_data', 'freefreeaustraliahtml5map_nameColor', 'freefreeaustraliahtml5map_nameFontSize');
DELETE FROM wp_options WHERE option_name LIKE 'freefreeaustraliahtml5map_state_info_%';

