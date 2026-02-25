#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loft_post_reorder_custom_order_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loft_post_reorder_custom_order_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loft_post_reorder_custom_order_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loft_post_reorder_custom_order_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loft_post_reorder_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loft_post_reorder_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loft_post_reorder_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loft_post_reorder_type'"
