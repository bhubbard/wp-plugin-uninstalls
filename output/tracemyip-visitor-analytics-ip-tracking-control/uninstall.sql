-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmip_lc_first_activation', 'tmip_lc_enable_unfiltered_stats', 'tmip_lc_enable_daily_chart', 'tmip_lc_enable_top_posts', 'tmip_lc_enable_top_pages', 'tmip_lc_enable_recent_views', 'tmip_lc_date_format', 'tmip_lc_time_format', 'tmip_lc_charts_retention', 'tmip_lc_recent_views_minutes', 'tmip_lc_chart_display_mode', 'tmip_lc_chart_series_display', 'tmip_lc_storage_method', 'tmip_lc_top_posts_count', 'tmip_lc_top_pages_count', 'tmip_lc_enable_active_ips', 'tmip_lc_active_ips_limit', 'tmip_lc_ip_lookup_service', 'tmip_lc_active_ips_timeframe', 'tmip_lc_dashboard_stats_order', 'tmip_lc_column_position', 'tmip_lc_timezone_setting', 'tmip_lc_custom_timezone', 'tmip_lc_stats_retention', 'tmip_lc_ip_data_retention', 'tmip_lc_enable_posts_column', 'tmip_lc_enable_pages_column', 'tmip_lc_count_interval', 'tmip_lc_count_interval_unit', 'tmip_lc_exclude_groups', 'tmip_lc_exclude_ips', 'tmip_lc_total_logged_views', 'tmip_admin_notice', 'tmip_show_activation_cache_notice', 'tmip_show_upgrade_cache_notice');
DELETE FROM wp_options WHERE option_name LIKE 'tmip_lc_enable_cpt_dashboard_%';
DELETE FROM wp_options WHERE option_name LIKE 'tmip_lc_top_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'tmip_lc_%';
DELETE FROM wp_options WHERE option_name LIKE 'tmip_lc_enable_cpt_column_%';

