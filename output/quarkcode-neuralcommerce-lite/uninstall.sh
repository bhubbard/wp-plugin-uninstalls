#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qcnc_alert_digest_queue'
wp option delete 'qcnc_delete_data_on_uninstall'
wp option delete 'qcnc_ai_provider'
wp option delete 'qcnc_ai_api_key'
wp option delete 'qcnc_ai_model'
wp option delete 'qcnc_ai_rate_limit'
wp option delete 'qcnc_alert_email'
wp option delete 'qcnc_additional_alert_emails'
wp option delete 'qcnc_margin_threshold'
wp option delete 'qcnc_cost_increase_threshold'
wp option delete 'qcnc_margin_drop_threshold'
wp option delete 'qcnc_enabled_alerts'
wp option delete 'qcnc_alert_digest_mode'
wp option delete 'qcnc_max_alerts_per_hour'
wp option delete 'qcnc_settings_last_modified'
wp option delete 'qcnc_clv_tier_thresholds'
wp option delete 'qcnc_daily_summary_time'
wp option delete 'qcnc_activated'
wp option delete 'qcnc_version'
wp option delete 'qcnc_activation_time'
wp option delete 'qcnc_cron_last_scheduled'
wp option delete 'qcnc_alert_retention_days'
wp option delete 'qcnc_log_retention_days'
wp option delete 'qcnc_last_daily_clv_run'
wp option delete 'qcnc_last_churn_check'
wp option delete 'qcnc_last_monthly_summary'
wp option delete 'qcnc_hourly_risk_check_enabled'
wp option delete 'qcnc_db_version'
wp option delete 'qcnc_custom_costs_migrated'
wp option delete 'qcnc_cache_duration'
wp option delete 'qcnc_enable_debug_logging'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'qcnc_hourly_digest'
wp cron event delete 'qcnc_daily_digest'
wp cron event delete 'qcnc_daily_profit_summary'
wp cron event delete 'qcnc_anomaly_detection'
wp cron event delete 'qcnc_hourly_profit_check'
wp cron event delete 'qcnc_weekly_cleanup'
wp cron event delete 'qcnc_cache_cleanup'
wp cron event delete 'qcnc_daily_clv_recalculation'
wp cron event delete 'qcnc_weekly_churn_check'
wp cron event delete 'qcnc_monthly_clv_summary'
wp cron event delete 'qcnc_hourly_high_risk_check'
wp cron event delete 'qcnc_calculate_new_customer_clv'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcnc_product_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcnc_product_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcnc_product_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcnc_product_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcnc_total_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcnc_total_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcnc_total_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcnc_total_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcnc_current_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcnc_current_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcnc_current_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcnc_current_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcnc_profit_analyzed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcnc_profit_analyzed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcnc_profit_analyzed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcnc_profit_analyzed'"
