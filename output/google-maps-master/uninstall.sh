#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tsm_quote'
wp option delete 'google_maps_master_view_basic_choice'
wp option delete 'google_maps_master_load_basic_roadmap'
wp option delete 'google_maps_master_load_basic_satellite'
wp option delete 'google_maps_master_load_basic_hybrid'
wp option delete 'google_maps_master_load_basic_terrain'
wp option delete 'google_maps_master_load_basic_marker1'
wp option delete 'google_maps_marker1_basic_choice'

