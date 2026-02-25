-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpr_ranking_cache_expire', 'wpr_count_only_visitors', 'wpr_image_type', 'wpr_alternative_image', 'wpr_image_type_custom_field', 'wpr_current_ranking', 'wpr_as_mobile_http_user_agent', 'wpr_exclusion_remote_addrs', 'wpr_exclusion_http_referers', 'wpr_exclusion_http_user_agent', 'wpr_cleanlog_cycle', 'wpr_cleanlog_time', 'wpr_cleanlog_keep_times', 'wpr_use_ajax_logging', 'wpr_db_version', 'wpr_rebuild_cache', 'wpr_reset_views', 'wpr_remote_addr_key', 'wpr_auto_cleanlog', 'wpr_dashboard_rankings', 'wpr_require_authority', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE 'wpr-%';

