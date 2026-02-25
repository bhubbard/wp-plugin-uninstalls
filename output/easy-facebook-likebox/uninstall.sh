#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fta_settings'
wp option delete 'fta_supported'
wp option delete 'fta_row_layout_notice'
wp option delete 'efbl_skin_id'
wp option delete 'efbl_account_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efbl_skin_%'"
wp option delete 'efbl_installDate'
wp option delete 'efbl_version'
wp option delete 'efbl_version_type'
wp option delete 'mif_skin_id'
wp option delete 'mif_account_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mif_skin_%'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'espf_plugin_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_esf_insta_logo_%' OR option_name LIKE '_site_transient_esf_insta_logo_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout'"
