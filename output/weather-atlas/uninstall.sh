#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weather_atlas_version'
wp option delete 'weather_atlas_conversion_done'
wp option delete 'widget_weather_atlas'
wp option delete 'weather_atlas_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'weather_atlas_widget_%'"

