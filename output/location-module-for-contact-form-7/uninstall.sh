#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_lat'
wp option delete 'default_lng'
wp option delete 'cf7_mrkr_enable'
wp option delete 'default_zoom'
wp option delete 'default_api_key'
wp option delete 'mapsView'
wp option delete 'cf7_enable_reset'
wp option delete 'cf7_gps_enable'
wp option delete 'cf7_custom_button_text'

