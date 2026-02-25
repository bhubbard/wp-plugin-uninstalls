#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'under_the_weather_settings'
wp option delete 'under_the_weather_usage_stats'
wp option delete 'under_the_weather_ratelimit_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'utw_geocoder_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'utw_geocoder_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'utw_geocoder_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'utw_geocoder_history'"
