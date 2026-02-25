#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gecko_calendar_gcal_refresh_token'
wp option delete 'gecko_calendar_gcal_access_token'
wp option delete 'gecko_calendar_gcal_active_calendars'
wp option delete 'gecko_calendar_gcal_active_calendars_details'
wp option delete 'gecko_google_calendar_ping_last_run'
wp option delete 'gecko_calendar_gcal_all_calendars'
wp option delete 'gecko_google_calendar_settings_oauth'
wp option delete 'gecko_google_calendar_settings_debug'
wp option delete 'gecko_calendar_gcal_config_location'

# Delete Transients
wp transient delete 'gecko_google_calendar_upcoming_events'
wp transient delete 'gecko_google_calendar_all_upcoming_events'

# Clear Cron Jobs
wp cron event delete 'gecko_google_calendar_ping'

