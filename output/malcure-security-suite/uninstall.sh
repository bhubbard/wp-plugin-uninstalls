#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'core_update_previous_version'
wp option delete 'MSS'

# Delete Transients
wp transient delete 'mss_license_status'

# Clear Cron Jobs
wp cron event delete 'mss_scan_monitor_event'
wp cron event delete 'mss_scheduled_scan'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
