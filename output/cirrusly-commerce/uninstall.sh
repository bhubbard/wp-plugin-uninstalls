#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cirrusly_install_api_token'
wp option delete 'cirrusly_gmc_daily_scan_scheduled'
wp option delete 'cirrusly_weekly_report_scheduled'
wp option delete 'woocommerce_enable_cost_of_goods_sold'
wp option delete 'cirrusly_enable_cost_of_goods_sold'
wp option delete 'cirrusly_gmc_merchant_id'
wp option delete 'cirrusly_scan_config'
wp option delete 'cirrusly_weekly_report_last_verify'
wp option delete 'cirrusly_gmc_daily_sync_scheduled'
wp option delete 'cirrusly_gmc_cron_last_verify'
wp option delete 'cirrusly_email_settings'
wp option delete 'cirrusly_email_log'
wp option delete 'cirrusly_shipping_config'
wp option delete 'woo_gmc_scan_data'
wp option delete 'cirrusly_content_scan_data'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'cirrusly_service_account_json'
wp option delete 'cirrusly_gmc_scan_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cirrusly_gmc_analytics_daily_%'"
wp option delete 'cirrusly_msrp_config'
wp option delete 'cirrusly_google_reviews_config'
wp option delete 'cirrusly_countdown_rules'
wp option delete 'cirrusly_badge_config'
wp option delete 'cirrusly_gmc_product_mapping'
wp option delete 'cirrusly_gmc_mapping_config'
wp option delete 'cirrusly_analytics_preferences'
wp option delete 'cirrusly_analytics_cache_version'
wp option delete 'cirrusly_gmc_import_progress'
wp option delete 'cirrusly_gmc_last_import_date'
wp option delete 'cirrusly_gmc_import_total'
wp option delete 'cirrusly_gmc_analytics_imported'
wp option delete 'cirrusly_gmc_unmapped_products'
wp option delete 'cirrusly_wizard_completed_version'
wp option delete 'cirrusly_last_known_plan'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'cirrusly_activation_redirect'
wp transient delete 'cirrusly_audit_data'
wp transient delete 'cirrusly_dashboard_metrics'
wp transient delete 'cirrusly_active_promos_stats'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cirrusly_gmc_blocked_save_%' OR option_name LIKE '_site_transient_cirrusly_gmc_blocked_save_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cirrusly_datetime_error_%' OR option_name LIKE '_site_transient_cirrusly_datetime_error_%'"
wp transient delete 'cirrusly_gmc_scan_debug'
wp transient delete 'cirrusly_upgrade_prompt'
wp transient delete 'cirrusly_wizard_upload_success'
wp transient delete 'cw_audit_data'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'cirrusly_gmc_daily_scan'
wp cron event delete 'cirrusly_weekly_profit_report'
wp cron event delete 'cirrusly_commerce_gmc_sync'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cirrusly_quota_bar_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cirrusly_quota_bar_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cirrusly_quota_bar_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cirrusly_quota_bar_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cirrusly_api_migration_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cirrusly_api_migration_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cirrusly_api_migration_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cirrusly_api_migration_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmc_promotion_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmc_promotion_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmc_promotion_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmc_promotion_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gla_identifier_exists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gla_identifier_exists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gla_identifier_exists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gla_identifier_exists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmc_product_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmc_product_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmc_product_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmc_product_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cirrusly_map_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cirrusly_map_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cirrusly_map_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cirrusly_map_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtin_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtin_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtin_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtin_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtin_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtin_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtin_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtin_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmc_product_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmc_product_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmc_product_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmc_product_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cirrusly_est_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cirrusly_est_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cirrusly_est_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cirrusly_est_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_msrp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_msrp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_msrp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_msrp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_auto_pricing_min_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_auto_pricing_min_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_auto_pricing_min_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_auto_pricing_min_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cirrusly_sale_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cirrusly_sale_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cirrusly_sale_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cirrusly_sale_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cirrusly_enable_countdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cirrusly_enable_countdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cirrusly_enable_countdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cirrusly_enable_countdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cw_sale_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cw_sale_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cw_sale_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cw_sale_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmc_custom_label_0'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmc_custom_label_0'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmc_custom_label_0'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmc_custom_label_0'"
