-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bkoimadhk_api_key', 'bkoimadhk_shortcodes', 'bkoimadhk_map_checkout_style', 'bkoimadhk_map_checkout_default_zoom_level', 'bkoimadhk_map_checkout_default_coordinates', 'bkoimadhk_map_checkout_map_switcher', 'bkoimadhk_map_checkout_add_autocomplete', 'bkoimadhk_map_checkout_custom_marker_icon', 'barikoidhk_default_zoom_level', 'barikoidhk_default_map_style', 'barikoidhk_custom_marker_icon', 'barikoidhk_shortcodes', 'bkoimadhk_map_options', 'bkoimadhk_default_map_style', 'bkoimadhk_default_zoom_level', 'bkoimadhk_custom_marker_icon');

