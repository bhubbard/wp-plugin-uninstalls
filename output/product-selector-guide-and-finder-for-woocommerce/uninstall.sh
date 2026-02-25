#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'velo_license'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'velo_product_selector_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'velo_product_selector_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'velo_product_selector_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'velo_product_selector_data'"
