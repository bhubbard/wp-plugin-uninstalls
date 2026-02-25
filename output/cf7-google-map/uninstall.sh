#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_googleMap_api_key'
wp option delete 'cf7_googleMap_enable_geocode'
wp option delete 'cf7_googleMap_enable_places'
wp option delete 'cf7-google-map-notices'

