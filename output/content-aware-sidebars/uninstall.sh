#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ca_condition_type_cache'
wp option delete 'woocommerce_shop_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'cas_db_version'
wp option delete 'cas_pro'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'qtranslate_enabled_languages'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'wpca/cache_condition_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ca_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ca_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ca_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ca_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ca_autoselect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ca_autoselect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ca_autoselect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ca_autoselect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_cas_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_cas_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_cas_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cas_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%host'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%host'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%host'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%host'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%deactivate_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%deactivate_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%deactivate_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%deactivate_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ca_handle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ca_handle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ca_handle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ca_handle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
