#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpv_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpv_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpv_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpv_video_url'"
