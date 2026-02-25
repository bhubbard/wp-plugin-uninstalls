#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bic_admin_bar_status'
wp option delete 'bic_disable_google_fonts'
wp option delete 'bic_cron_schedule'
wp option delete 'bic_cron_on'
wp option delete 'bic_manual_api_run'
wp option delete 'bic_manual_api_run_last'
wp option delete 'bic_current_plan'
wp option delete 'bic_last_action'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'bic_cron_hook'
wp cron event delete 'fs_debug_turn_off_logging_hook'

