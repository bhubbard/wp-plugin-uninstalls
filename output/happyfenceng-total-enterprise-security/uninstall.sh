#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'happyfenceng_already_initialized'
wp option delete 'happyfenceng_options'
wp option delete 'happyfenceng_purge_on_uninstall'
wp option delete 'happyfenceng_log_type'
wp option delete 'happyfenceng_siem_endpoint'
wp option delete 'happyfenceng_encryption_fingerprint'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'happyfenceng_last_error'
wp transient delete 'happyfenceng_cf_guard_detector'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'happyfenceng_daily_scan'
wp cron event delete 'fs_debug_turn_off_logging_hook'

