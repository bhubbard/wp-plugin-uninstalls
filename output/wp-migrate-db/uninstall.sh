#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmdb_addon_requirement_check'
wp option delete 'wpmdb_settings'
wp option delete 'wpmdb_error_log'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpmdb_migration_state'
wp option delete 'wpmdb_usage'
wp option delete 'wpmdb_remote_response'
wp option delete 'wpmdb_recent_migrations'
wp option delete 'wpmdb_migration_options'
wp option delete 'wpmdb_wpe_remote_cookie'
wp option delete 'wpmdb_migration_id'
wp option delete 'wpmdb_saved_profiles'
wp option delete 'wpmdb_schema_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpmdb_folder_transfers_media_files_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpmdb_folder_transfers_themes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpmdb_folder_transfers_plugins_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpmdb_folder_transfers_muplugins_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpmdb_folder_transfers_others_%'"
wp option delete 'ms_files_rewriting'

# Delete Transients
wp transient delete 'wpmdb_upgrade_data'
wp transient delete 'update_plugins'
wp transient delete 'wpmdb_disabled_legacy_addons'
wp transient delete 'wpmdb_queue_status'
wp transient delete 'wpmdb_migration_id'
wp transient delete 'wp_migrate_db_deactivated_notice_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpmdb_dismiss_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpmdb_dismiss_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpmdb_dismiss_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpmdb_dismiss_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpmdb_reminder_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpmdb_reminder_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpmdb_reminder_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpmdb_reminder_%'"
