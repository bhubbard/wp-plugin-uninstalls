#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7cstmzr_style_schemes'
wp option delete 'cf7cstmzr_welcome_done'
wp option delete 'cf7cstmzr_enabled_globally'
wp option delete 'cf7cstmzr-load-body-tag'
wp option delete 'cf7cstmzr_style_schemes_preview'
wp option delete 'cf7cstmzr-preview-styled'
wp option delete 'cf7cstmzr-preview-mode'
wp option delete 'cf7cstmzr-split-mode'
wp option delete 'cf7cstmzr_cache_form'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wp2l_license'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7cstmzr_style_scheme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7cstmzr_style_scheme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7cstmzr_style_scheme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7cstmzr_style_scheme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7cstmzr-load-body-tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7cstmzr-load-body-tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7cstmzr-load-body-tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7cstmzr-load-body-tag'"
