-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('koko_analytics_settings', 'koko_analytics_referrers_v2', 'koko_analytics_version', 'koko_analytics_realtime_pageview_count', 'koko_analytics_last_aggregation_at', 'koko_analytics_use_custom_endpoint', 'koko_analytics_jetpack_import_params', 'koko_analytics_pro_version', 'koko_analytics_remote_posts');

