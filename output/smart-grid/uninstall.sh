#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_grid_prv-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_grid_prv-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_grid_prv-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_grid_prv-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_grid_dwn-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_grid_dwn-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_grid_dwn-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_grid_dwn-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
