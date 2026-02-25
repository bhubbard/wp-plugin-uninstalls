#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcsfw_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcsfw_use_at_cat_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcsfw_use_at_cat_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcsfw_use_at_cat_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcsfw_use_at_cat_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
