-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speedwapp_initial_version', '_speedwapp_ID_preview', '_speedwapp_html_preview_data', 'speedwapp_api_token', '_speedwapp_css_libs', '_speedwapp_js_libs', 'sidebars_widgets', 'Speedwapp_Settings', 'wp_speedwapp_settings', 'wp_speedwapp_display', 'wp_speedwapp_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_speedwapp_json_data', 'page_data', 'speedwapp_page_data', '_is_speedwapp_editor_active', '_speedwapp_html_data', '_speedwapp_css_libs', '_speedwapp_js_libs', 'speedwapp_api_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_speedwapp_json_data', 'page_data', 'speedwapp_page_data', '_is_speedwapp_editor_active', '_speedwapp_html_data', '_speedwapp_css_libs', '_speedwapp_js_libs', 'speedwapp_api_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_speedwapp_json_data', 'page_data', 'speedwapp_page_data', '_is_speedwapp_editor_active', '_speedwapp_html_data', '_speedwapp_css_libs', '_speedwapp_js_libs', 'speedwapp_api_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_speedwapp_json_data', 'page_data', 'speedwapp_page_data', '_is_speedwapp_editor_active', '_speedwapp_html_data', '_speedwapp_css_libs', '_speedwapp_js_libs', 'speedwapp_api_token');

