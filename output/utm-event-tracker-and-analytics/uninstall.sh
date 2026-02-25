#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'utm_event_tracker_settings'
wp option delete 'utm_event_tracker_dismiss_cache_notice'
wp option delete 'utm_event_tracker_overview_settings'

# Delete Transients
wp transient delete 'utm_event_tracker_stats_updating'
wp transient delete 'utm_event_tracker_woocommerce_session_started'

# Clear Cron Jobs
wp cron event delete 'utm_event_tracker/update_session_location'
wp cron event delete 'utm_event_tracker/migrate_event_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'utm_event_tracker_session'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'utm_event_tracker_session'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'utm_event_tracker_session'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'utm_event_tracker_session'"
