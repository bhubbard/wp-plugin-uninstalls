#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_seculoco_bulk_export_%' OR option_name LIKE '_site_transient_seculoco_bulk_export_%'"
wp transient delete 'seculoco_migration_success'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'seculoco_cleanup_cron'
wp cron event delete 'seculoco_cleanup_expired'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seculoco_passkeys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seculoco_passkeys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seculoco_passkeys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seculoco_passkeys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seculoco_passkey_challenge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seculoco_passkey_challenge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seculoco_passkey_challenge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seculoco_passkey_challenge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seculoco_wrapped_master_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seculoco_wrapped_master_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seculoco_wrapped_master_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seculoco_wrapped_master_key'"
