#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_unikforce'
wp option delete 'csf_demo_mode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slidermeta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slidermeta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slidermeta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slidermeta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unikforce_selectcategory_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unikforce_selectcategory_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unikforce_selectcategory_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unikforce_selectcategory_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
