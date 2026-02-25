#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lmfwc_settings_general'
wp option delete 'lmfwc_db_version'
wp option delete 'lmfwc_settings_tools'
wp option delete 'lmfwc_settings_woocommerce'
wp option delete 'dlm_settings_general'
wp option delete 'dlm_settings_woocommerce'
wp option delete 'lmfwc_table_check'
wp option delete 'lmfwc_settings'
wp option delete 'lmfwc_settings_order_status'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'lmfwc_api_key'
wp transient delete 'lmfwc_consumer_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_lmfwc_notice_%' OR option_name LIKE '_site_transient_lmfwc_notice_%'"
wp transient delete 'lmfwc_error'
wp transient delete 'max_order_pages'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmfwc_pro_notice_dismisseds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmfwc_pro_notice_dismisseds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmfwc_pro_notice_dismisseds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmfwc_pro_notice_dismisseds'"
