#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cateco_settings'
wp option delete 'cc_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cateco_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cateco_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cateco_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cateco_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_order'"
