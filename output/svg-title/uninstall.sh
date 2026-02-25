#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'svgt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'svgt_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'svgt_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'svgt_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'svgt_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
