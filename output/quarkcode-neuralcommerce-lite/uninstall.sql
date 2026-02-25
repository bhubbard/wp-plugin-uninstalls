-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qcnc_alert_digest_queue', 'qcnc_delete_data_on_uninstall', 'qcnc_ai_provider', 'qcnc_ai_api_key', 'qcnc_ai_model', 'qcnc_ai_rate_limit', 'qcnc_alert_email', 'qcnc_additional_alert_emails', 'qcnc_margin_threshold', 'qcnc_cost_increase_threshold', 'qcnc_margin_drop_threshold', 'qcnc_enabled_alerts', 'qcnc_alert_digest_mode', 'qcnc_max_alerts_per_hour', 'qcnc_settings_last_modified', 'qcnc_clv_tier_thresholds', 'qcnc_daily_summary_time', 'qcnc_activated', 'qcnc_version', 'qcnc_activation_time', 'qcnc_cron_last_scheduled', 'qcnc_alert_retention_days', 'qcnc_log_retention_days', 'qcnc_last_daily_clv_run', 'qcnc_last_churn_check', 'qcnc_last_monthly_summary', 'qcnc_hourly_risk_check_enabled', 'qcnc_db_version', 'qcnc_custom_costs_migrated', 'qcnc_cache_duration', 'qcnc_enable_debug_logging', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qcnc_product_cost', '_qcnc_total_cost', '_qcnc_current_cost', '_qcnc_profit_analyzed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qcnc_product_cost', '_qcnc_total_cost', '_qcnc_current_cost', '_qcnc_profit_analyzed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qcnc_product_cost', '_qcnc_total_cost', '_qcnc_current_cost', '_qcnc_profit_analyzed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qcnc_product_cost', '_qcnc_total_cost', '_qcnc_current_cost', '_qcnc_profit_analyzed');

