#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ails_auto_sync_offset'
wp option delete 'autolinks_sync'
wp option delete 'ails_last_synced_items'
wp option delete 'automatic-internal-links-for-seo'
wp option delete 'ails_onboarding_status'
wp option delete 'autolinks_db_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'ails_badge_count'
wp transient delete 'ails_sync_totals'
wp transient delete 'ails_auto_sync_lock'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'ails_auto_sync_event'
wp cron event delete 'ails_transients'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_internal_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_internal_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_internal_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_internal_links'"
