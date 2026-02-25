#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kelkoogroup_salestracking_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'kelkoogroup_salestracking_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'kelkoogroup_salestracking_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'kelkoogroup_salestracking_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kelkoogroup_salestracking_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kelkoogroup_salestracking_kelkooId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kelkoogroup_salestracking_kelkooId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kelkoogroup_salestracking_kelkooId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kelkoogroup_salestracking_kelkooId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kelkoogroup_salestracking_kk_gclid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kelkoogroup_salestracking_kk_gclid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kelkoogroup_salestracking_kk_gclid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kelkoogroup_salestracking_kk_gclid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kelkoogroup_salestracking_kk_msclkid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kelkoogroup_salestracking_kk_msclkid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kelkoogroup_salestracking_kk_msclkid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kelkoogroup_salestracking_kk_msclkid'"
