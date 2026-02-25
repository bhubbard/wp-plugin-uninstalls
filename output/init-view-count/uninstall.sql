-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('init_plugin_suite_view_count_enable_widget', 'init_plugin_suite_view_count_post_types', 'init_plugin_suite_view_count_auto_insert', 'init_plugin_suite_view_count_enable_day', 'init_plugin_suite_view_count_enable_week', 'init_plugin_suite_view_count_enable_month', 'init_plugin_suite_view_count_disable_trending', 'init_plugin_suite_view_count_batch', 'init_plugin_suite_view_count_strict_ip_check', 'init_plugin_suite_view_count_delay', 'init_plugin_suite_view_count_scroll_percent', 'init_plugin_suite_view_count_scroll_enabled', 'init_plugin_suite_view_count_storage', 'init_plugin_suite_view_count_disable_style', 'init_plugin_suite_view_count_trending', 'trending_last_calculation', 'init_plugin_suite_view_count_trending_debug', 'hot_topics_24h', 'init_plugin_suite_view_count_site_traffic_shape', 'init_plugin_suite_view_count_site_traffic_shape_learned');

