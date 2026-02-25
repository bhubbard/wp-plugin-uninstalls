-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_google_maps_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_charty_display_mode', '_charty_region', '_charty_color_axis', '_charty_bg_color', '_charty_tooltip_trigger', '_charty_dataless_region_color', '_charty_default_color', '_charty_description', '_charty_data', '_charty_labels', '_charty_maps_api_key', '_charty_type', '_charty_height', '_charty_map_zoom_level', '_charty_map_style', '_charty_map_type_control');
DELETE FROM wp_usermeta WHERE meta_key IN ('_charty_display_mode', '_charty_region', '_charty_color_axis', '_charty_bg_color', '_charty_tooltip_trigger', '_charty_dataless_region_color', '_charty_default_color', '_charty_description', '_charty_data', '_charty_labels', '_charty_maps_api_key', '_charty_type', '_charty_height', '_charty_map_zoom_level', '_charty_map_style', '_charty_map_type_control');
DELETE FROM wp_termmeta WHERE meta_key IN ('_charty_display_mode', '_charty_region', '_charty_color_axis', '_charty_bg_color', '_charty_tooltip_trigger', '_charty_dataless_region_color', '_charty_default_color', '_charty_description', '_charty_data', '_charty_labels', '_charty_maps_api_key', '_charty_type', '_charty_height', '_charty_map_zoom_level', '_charty_map_style', '_charty_map_type_control');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_charty_display_mode', '_charty_region', '_charty_color_axis', '_charty_bg_color', '_charty_tooltip_trigger', '_charty_dataless_region_color', '_charty_default_color', '_charty_description', '_charty_data', '_charty_labels', '_charty_maps_api_key', '_charty_type', '_charty_height', '_charty_map_zoom_level', '_charty_map_style', '_charty_map_type_control');

