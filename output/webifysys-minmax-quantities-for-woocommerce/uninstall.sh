#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webimiqu_gnrl_sttng_opt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbf_min_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbf_min_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbf_min_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbf_min_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbf_max_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbf_max_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbf_max_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbf_max_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbf_step_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbf_step_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbf_step_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbf_step_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbf_default_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbf_default_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbf_default_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbf_default_qty'"
