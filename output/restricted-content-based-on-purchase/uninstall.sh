#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'resconbop_fading_excerpt_info'
wp option delete 'resconbop_excerpt_length'
wp option delete 'resconbop_custom_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resconbop_meta_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resconbop_meta_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resconbop_meta_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resconbop_meta_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resconbop_product_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resconbop_product_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resconbop_product_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resconbop_product_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resconbop_selected_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resconbop_selected_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resconbop_selected_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resconbop_selected_page_id'"
