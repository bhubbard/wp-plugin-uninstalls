#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tfwc_settings_tab_timologia_comp_move'
wp option delete 'tfwc_settings_tab_timologia_tim_move'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_timologio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_timologio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_timologio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_timologio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_billing_%'"
