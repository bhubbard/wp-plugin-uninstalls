#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'daw-google-map-api-key'
wp option delete 'daw-polygons'
wp option delete 'daw-delivery-time'

