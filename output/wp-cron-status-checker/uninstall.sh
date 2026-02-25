#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wcsc_last_error_check'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wcsc_status'
wp option delete '_wcsc_version'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'wcsc-wp-cron-tested'
wp transient delete 'doing_cron'

# Clear Cron Jobs
wp cron event delete 'wcsc_email_notice_hook'
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'wcsc_event_start'
wp cron event delete 'wcsc_debug_event'

