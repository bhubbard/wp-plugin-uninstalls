#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultrablocks_google_maps_api_key'
wp option delete 'ultrablocks_mailchimp_api_key'
wp option delete 'ultrablocks_mailchimp_audience_id'
wp option delete 'ultrablocks_open_weather_map_api_key'

