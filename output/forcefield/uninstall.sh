#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'forcefield_wbvulndb_verified'
wp option delete 'forcefield'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sidebar_options'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ads_box_off'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_donation_box_off'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_report_box_off'"

# Delete Transients
wp transient delete 'forcefield_server_ip'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'wordquest_plugin_info'
wp transient delete 'wordquest_guides_feed'
wp transient delete 'wordquest_quest_feed'
wp transient delete 'pluginreview_newest_feed'
wp transient delete 'prn_feed'
wp transient delete 'pluginreview_updated_feed'

# Clear Cron Jobs
wp cron event delete 'forcefield_blocklist_table_cleanup'
wp cron event delete 'fs_debug_turn_off_logging_hook'

