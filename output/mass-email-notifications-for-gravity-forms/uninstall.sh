#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%table_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%suppressions_table_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rating_asked'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%counters'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%review_prompter_usage_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%survey_status'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%next_send_ready' OR option_name LIKE '_site_transient_%next_send_ready'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%send_lock' OR option_name LIKE '_site_transient_%send_lock'"
wp transient delete 'mass_email_needs_table_creation'
wp transient delete 'update_plugins'
wp transient delete 'gops_error'
wp transient delete 'gops_notice'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'send_mass_email_notifications'
wp cron event delete 'fs_debug_turn_off_logging_hook'

