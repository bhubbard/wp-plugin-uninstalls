#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bsgcal_tokens'
wp option delete 'bsgcal_settings'
wp option delete 'bsgcal_version'

# Delete Transients
wp transient delete 'bsgcal_oauth_state'
wp transient delete 'bsgcal_calendar_cache'

# Clear Cron Jobs
wp cron event delete 'bsgcal_cleanup_expired_tokens'
wp cron event delete 'bsgcal_sync_calendar_events'

