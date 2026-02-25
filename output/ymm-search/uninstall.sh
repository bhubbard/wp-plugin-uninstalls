#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ymm_display_vehicle_fitment'
wp option delete 'ymm_enable_category_dropdowns'
wp option delete 'ymm_enable_search_field'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_permalinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
