#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weather_widget_wp_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_weather_widget_wp_data_%' OR option_name LIKE '_site_transient_weather_widget_wp_data_%'"

