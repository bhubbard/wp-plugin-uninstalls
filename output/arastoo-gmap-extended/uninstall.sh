#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arastoo_gmap_api'
wp option delete 'arastoo_gmap_content'
wp option delete 'arastoo_gmap_lat'
wp option delete 'arastoo_gmap_long'
wp option delete 'arastoo_gmap_icon'
wp option delete 'arastoo_gmap_height'

