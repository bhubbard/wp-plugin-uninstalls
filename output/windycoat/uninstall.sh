#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'carbon_custom_sidebars'
wp option delete 'wc_db_version'
wp option delete '_wc_openweatherapikey'
wp option delete '_wc_latitude'
wp option delete '_wc_longitude'
wp option delete '_wc_cache_hours'
wp option delete '_wc_openweather_unit'
wp option delete '_wc_time_zone'
wp option delete 'wc_weather_data'
wp option delete 'wc_weather_last_updated'

# Clear Cron Jobs
wp cron event delete 'wc_sync_weather'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
