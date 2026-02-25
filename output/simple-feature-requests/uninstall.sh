#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'sfr_flush_rewrite_rules_flag'
wp option delete 'sfr_status_slug_tracker'
wp option delete 'sfr_db_names_updated'
wp option delete 'sfr_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'sfr_notices'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_via'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_via'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_via'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_via'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfr_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfr_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfr_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfr_status'"
