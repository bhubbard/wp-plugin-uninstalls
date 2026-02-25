#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgc_fullcalendar_theme'
wp option delete 'pgc_selected_calendar_ids'
wp option delete 'pgc_fullcalendar_version'
wp option delete 'pgc_cache_time'
wp option delete 'pgc_access_token'
wp option delete 'pgc_api_key'
wp option delete 'pgc_show_private_events'
wp option delete 'pgc_private_events_title'
wp option delete 'pgc_public_calendarlist'
wp option delete 'pgc_refresh_token'
wp option delete 'pgc_calendarlist'
wp option delete 'pgc_colorlist'
wp option delete 'pgc_client_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pgc_notices_%'"

