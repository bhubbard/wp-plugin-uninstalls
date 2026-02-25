-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajc_async_js', 'ajc_async_css', 'ajc_detect_scripts_in_wp_head', 'ajc_detect_scripts_in_wp_foot', 'ajc_css_loading_method', 'ajc_css_minify', 'ajc_remove_GET_part', 'ajc_exceptions');

