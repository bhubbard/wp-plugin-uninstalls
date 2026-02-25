-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lightvc_supported_post_types', 'lightvc_pvc_import_state', 'lightvc_scroll_threshold', 'lightvc_time_window', 'lightvc_cache_duration', 'lightvc_enable_caching', 'lightvc_fast_mode', 'lightvc_show_views_on_content', 'lightvc_load_css_in_header', 'lightvc_enable_get_endpoint', 'lightvc_query_method', 'lightvc_exclude_bots', 'lightvc_db_version');

