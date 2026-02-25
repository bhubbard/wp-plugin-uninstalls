#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wt_sermonnet_playlists'
wp option delete 'wt_sermonnet_id'
wp option delete 'wt_sermonnet_num'
wp option delete 'wt_sermonnet_name'

# Delete Transients
wp transient delete 'wt_recent_sermonnets_all'
wp transient delete 'wt_50_sermonnets_fulldata'

