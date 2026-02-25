-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voizee_api_key', 'voizee_widget_script', 'voizee_api_dashboard_enabled', 'voizee_api_cf7_enabled', 'voizee_api_gf_enabled', 'voizee_api_cf7_logs', 'voizee_api_gf_logs', 'voizee_stats_cache');

