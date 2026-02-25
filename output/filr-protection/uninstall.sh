#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'filr_status'
wp option delete 'filr_shortcode'
wp option delete 'filr_security_logs'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Clear Cron Jobs
wp cron event delete 'check_file_acess'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file-upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file-upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file-upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file-upload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is-folder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is-folder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is-folder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is-folder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file-download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file-download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file-download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file-download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'assigned-folder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'assigned-folder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'assigned-folder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'assigned-folder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expire-download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expire-download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expire-download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expire-download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expire-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expire-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expire-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expire-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is-external'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is-external'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is-external'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is-external'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'external-source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'external-source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'external-source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'external-source'"
