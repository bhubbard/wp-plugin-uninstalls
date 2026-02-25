#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snowflurry_snow_color'
wp option delete 'snowflurry_always_show_snow'
wp option delete 'snowflurry_weather_country_codes'
wp option delete 'snowflurry_weather_api_key'

# Delete Transients
wp transient delete 'snowflurry_enqueue_snowstorm_script'

# Clear Cron Jobs
wp cron event delete 'snowflurry_snow_check_weather_event'

