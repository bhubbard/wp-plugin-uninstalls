#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cff-google-calendar-version'
wp option delete 'CP_CFF_GOOGLE_CALENDAR_CLIENT_ID'
wp option delete 'CP_CFF_GOOGLE_CALENDAR_CLIENT_SECRET'
wp option delete 'CP_CFF_GOOGLE_CALENDAR_ACCESS_TOKEN'
wp option delete 'CP_CFF_GOOGLE_CALENDAR_REFRESH_TOKEN'

# Delete Transients
wp transient delete 'cff_google_oauth_state'

