#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caldav2ics_calendar_urls'
wp option delete 'caldav2ics_calendar_users'
wp option delete 'caldav2ics_calendar_passwords'
wp option delete 'caldav2ics_calendar_files'
wp option delete 'caldav2ics_calendar_excludes'

# Delete Transients
wp transient delete 'caldav2ics_upgrade'
wp transient delete 'caldav2ics'

# Clear Cron Jobs
wp cron event delete 'bl_cron_hook'

