#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooproddel_activation'
wp option delete 'wooproddel_notification'
wp option delete 'wooproddel_date_required'
wp option delete 'wooproddel_checkoutdates'
wp option delete 'wooproddel_min_delivery_time'
wp option delete 'wooproddel_max_delivery_time'
wp option delete 'wooproddel_excluded_dates'
wp option delete 'wooproddel_messages'
wp option delete 'wooproddel_exclude_timeslots'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wooproddel_timeslots'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooproddel_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooproddel_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooproddel_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooproddel_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooproddel_delivery_timeslot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooproddel_delivery_timeslot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooproddel_delivery_timeslot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooproddel_delivery_timeslot'"
