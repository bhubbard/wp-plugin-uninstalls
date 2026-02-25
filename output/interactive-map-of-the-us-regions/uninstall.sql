-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freeusregionshtml5map_options', 'freeusregionshtml5map_goptions', 'freeusregionshtml5map_imported_map_key', 'freeusahtml5map_map_data', 'freeusahtml5map_nameColor', 'freeusahtml5map_nameFontSize');
DELETE FROM wp_options WHERE option_name LIKE 'freeusahtml5map_state_info_%';

