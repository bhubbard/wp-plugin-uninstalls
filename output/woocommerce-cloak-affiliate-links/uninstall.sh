#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wccal_permalinks'
wp option delete 'wccal_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wccal_clickthrough_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wccal_clickthrough_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wccal_clickthrough_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wccal_clickthrough_count'"
