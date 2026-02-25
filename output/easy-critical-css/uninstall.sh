#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_cc_activation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_cc_%'"
wp option delete 'easy_cc_db_version'
wp option delete 'fs_accounts'
wp option delete 'easy_cc_version'
wp option delete 'easy_cc_critical_css_mode'
wp option delete 'perfmatters_options'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'easy_cc_is_local_site'
wp transient delete 'easy_cc_is_rest_api_reachable'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'easy_cc_cleanup_old_handshakes'
wp cron event delete 'easy_cc_detect_timeouts'
wp cron event delete 'fs_debug_turn_off_logging_hook'

