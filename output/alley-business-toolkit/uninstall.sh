#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__alley_business_toolkit_do_redirect'
wp option delete 'alley-business-toolkit-update-notice'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'alley_business_toolkit_deactivated_notice_id'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abt_disclaimer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abt_disclaimer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abt_disclaimer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abt_disclaimer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abt_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abt_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abt_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abt_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abt_source_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abt_source_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abt_source_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abt_source_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abt_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abt_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abt_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abt_position'"
