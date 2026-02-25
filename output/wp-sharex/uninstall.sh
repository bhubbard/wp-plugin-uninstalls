#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'joomdev_wss_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_share_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_share_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_share_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_share_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'joomdev_wss_total_share_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'joomdev_wss_total_share_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'joomdev_wss_total_share_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'joomdev_wss_total_share_count'"
