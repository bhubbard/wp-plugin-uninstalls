#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weather_press_lang'
wp option delete 'weather_press_unit'
wp option delete 'weather_press_mainLocation'
wp option delete 'weather_press_secondary_location'
wp option delete 'weather_press_where'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_current_transient' OR option_name LIKE '_site_transient_%_current_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hourly_transient' OR option_name LIKE '_site_transient_%_hourly_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_daily_transient' OR option_name LIKE '_site_transient_%_daily_transient'"

