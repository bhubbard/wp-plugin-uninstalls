#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtn_api_key'
wp option delete 'wtn_caching_time'
wp option delete 'wtn_int_featured_content_settings'
wp option delete 'wtn_settings'
wp option delete 'wtn_general_settings'
wp option delete 'wtn_int_ticker_content_settings'
wp option delete 'wtn_int_ticker_styles_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wtn_flush_rewrite_rules_flag'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtn_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtn_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtn_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtn_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtn_is_breaking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtn_is_breaking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtn_is_breaking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtn_is_breaking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtn_is_hero'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtn_is_hero'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtn_is_hero'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtn_is_hero'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtn_is_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtn_is_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtn_is_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtn_is_featured'"
