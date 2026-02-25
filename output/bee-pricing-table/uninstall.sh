#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bee_pricing_tab1_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bee_pricing_tab1_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bee_pricing_tab1_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bee_pricing_tab1_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bee_pricing_tab2_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bee_pricing_tab2_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bee_pricing_tab2_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bee_pricing_tab2_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
