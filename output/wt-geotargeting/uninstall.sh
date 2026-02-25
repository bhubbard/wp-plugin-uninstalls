#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wt_geotargeting_geobase'
wp option delete 'wt_geotargeting_sistem'
wp option delete 'wt_geotargeting_default'
wp option delete 'wt_geotargeting_debug'
wp option delete 'wt_geotargeting_region'

