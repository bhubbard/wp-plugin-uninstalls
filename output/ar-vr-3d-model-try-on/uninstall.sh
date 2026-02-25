#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ar_try_on_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ar_try_on_clicks_%'"
wp option delete 'ar_try_on_compression_settings'
wp option delete 'get_cache_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cached_promos' OR option_name LIKE '_site_transient_%_cached_promos'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'ar_try_on_process_compression_queue'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ar_try_on_product_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ar_try_on_product_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ar_try_on_product_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ar_try_on_product_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ar_try_on_dismiss_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ar_try_on_dismiss_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ar_try_on_dismiss_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ar_try_on_dismiss_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ar_try_on_shown_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ar_try_on_shown_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ar_try_on_shown_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ar_try_on_shown_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ar_try_on_clicked_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ar_try_on_clicked_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ar_try_on_clicked_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ar_try_on_clicked_%'"
