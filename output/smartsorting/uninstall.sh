#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss_views_delay'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
