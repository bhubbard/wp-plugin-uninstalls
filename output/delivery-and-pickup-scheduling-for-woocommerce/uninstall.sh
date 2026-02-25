#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lpac_dps'
wp option delete 'active_sitewide_plugins'
wp option delete 'chwazi_db_version'
wp option delete 'lpac_dps_installed_at_version'
wp option delete 'lpac_dps_first_install_date'
wp option delete 'csf_demo_mode'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'lpac_dps_remove_passed_maxed_dates'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lpac_dps_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lpac_dps_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lpac_dps_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lpac_dps_dismissed_notices'"
