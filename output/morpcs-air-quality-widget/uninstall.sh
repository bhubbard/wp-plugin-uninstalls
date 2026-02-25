#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aqi_api_key'
wp option delete 'aqi_api_zip'
wp option delete 'aqi_widget_show_forecast'
wp option delete 'aqi_widget_show_legend'
wp option delete 'aqi_widget_theme'

