#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wallet_up_settings'
wp option delete 'wallet_up_transfer_call'
wp option delete 'wallet_up_display_settings'
wp option delete 'wallet_up_business_card_data'
wp option delete 'wallet_up_log_config'
wp option delete 'wallet_up_db_version'
wp option delete 'wallet_up_version'
wp option delete 'wallet_up_version_backup'
wp option delete 'wallet_up_migration_log'
wp option delete 'wallet_up_wc_version'
wp option delete 'wallet_up_wc_settings'
wp option delete 'wallet_up_transactions_table_version'
wp option delete 'wallet_up_enabled_methods'
wp option delete 'wallet_up_encryption_key'
wp option delete 'wallet_up_flush_rules'
wp option delete 'wallet_up_quick_access_count'
wp option delete 'wallet_up_activated'
wp option delete 'wallet_up_transient_registry'
wp option delete 'wallet_up_woocommerce_display_settings'
wp option delete 'woocommerce_settings'
wp option delete 'woocommerce_currency_pos'
wp option delete 'wallet_up_woo_settings'
wp option delete 'wallet_up_wpforms_template_enabled'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wallet_up_compatibility_issues'
wp transient delete 'wallet_up_activation_redirect'
wp transient delete 'wallet_up_preview_data'
wp transient delete 'wallet_up_business_card_data'
wp transient delete 'wallet_up_premium_status_check'
wp transient delete 'wallet_up_last_backup_time'
wp transient delete 'wc_blocks_payment_method_type_registry'
wp transient delete 'wc_gateway_wallet_up_initialized'
wp transient delete 'wpforms_templates'
wp transient delete 'wpforms_available_templates'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wallet_up_cleanup_urls'
wp cron event delete 'wallet_up_cleanup_analytics'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
