#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextMonitorUpdate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Gather'"
wp option delete 'ImfsPage'
wp option delete 'imfsQueryMonitor'
wp option delete 'imfsQueryMonitornextMonitorUpdate'
wp option delete 'imfsQueryMonitorGather'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
