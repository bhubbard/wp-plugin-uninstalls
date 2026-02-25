#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ittglobe_version'
wp option delete 'ittglobes'
wp option delete 'csf_demo_mode'
wp option delete 'fs_active_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'globe_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'globe_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'globe_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'globe_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'globe_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'globe_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'globe_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'globe_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'points_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'points_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'points_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'points_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dotLabels_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dotLabels_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dotLabels_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dotLabels_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
