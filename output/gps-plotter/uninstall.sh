#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gps-plotter-api-key'
wp option delete 'map-type'
wp option delete 'gps_plotter_options'
wp option delete 'gpsplotter_app_id'

