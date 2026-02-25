#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wishful_ad_manager_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wishful_ad_manager'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wishful_ad_manager'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wishful_ad_manager'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wishful_ad_manager'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wishful_ad_manager_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wishful_ad_manager_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wishful_ad_manager_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wishful_ad_manager_stats'"
