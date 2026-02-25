-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsol_optimization_settings', 'wpsol_advanced_settings', 'wpsol_db_clean_addon', 'wpsol_configuration', 'wpsol_cdn_integration', 'wpsol_addon_author_max_cdn', 'wpsol_addon_author_key_cdn', 'wpsol_addon_author_cloudflare', 'wpsol_addon_varnish_ip', 'wpsol_ecommerce_detect', 'wpsol_preload_after_saved_setting', 'wpsol_scan_queries', 'wpsol_clean_database_config', 'wpsol_database_cleanup_count_time', 'wpsol_version', 'wpsol_db_version', 'ju_user_token', 'wpsol_exclude_from_defer_css', 'sccss_settings', 'wpsol_loadtime_analysis_lastest', 'wpsol_loadtime_analysis_total', 'wpsol_database_queries_analysis', 'wpsol_profiles_option', 'wpsol_file_group_activation_popup_settings', 'wpsol_addon_exclude_file_lists', 'recently_activated', 'wpsol_woocommerce_speedup');
DELETE FROM wp_options WHERE option_name LIKE '%_jureview_installation_time';
DELETE FROM wp_options WHERE option_name LIKE '%_jufeedback_version';
DELETE FROM wp_options WHERE option_name LIKE '%_disallow_feedback';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsol_notice_dismissed_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsol_notice_dismissed_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsol_notice_dismissed_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsol_notice_dismissed_time');

