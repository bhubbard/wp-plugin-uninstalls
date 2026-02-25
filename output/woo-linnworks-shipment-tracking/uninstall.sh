#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linnworks_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linnworks_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linnworks_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linnworks_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linnworks_tracking_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linnworks_tracking_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linnworks_tracking_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linnworks_tracking_provider'"
