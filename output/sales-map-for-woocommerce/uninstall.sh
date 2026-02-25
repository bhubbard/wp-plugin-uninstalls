#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgitswcsm_gmap_api'
wp option delete 'sgitswcsm_debug_mode'
wp option delete 'sgitswcsm_order_count'
wp option delete 'sgitswcsm_default_latlong'
wp option delete 'sgitswcsm_default_zoom'

