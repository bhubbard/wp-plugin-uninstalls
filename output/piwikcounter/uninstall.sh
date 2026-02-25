#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'piwikcounter_piwik_url'
wp option delete 'piwikcounter_site_id'
wp option delete 'piwikcounter_auth_key'
wp option delete 'piwikcounter_start_date'
wp option delete 'piwikcounter_unique_visitors'
wp option delete 'piwikcounter_update_every'
wp option delete 'piwikcounter_visits_today_visible'
wp option delete 'piwikcounter_visitors_last_change'
wp option delete 'piwikcounter_visitors_yesterday'
wp option delete 'piwikcounter_todays_visitors_last_change'
wp option delete 'piwikcounter_todays_visitors'

