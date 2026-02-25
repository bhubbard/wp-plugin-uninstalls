#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reality_shop_delete_data'
wp option delete 'reality_shop_open_in_modal'
wp option delete 'reality_shop_remove_comments_and_empty_lines'
wp option delete 'reality_shop_lazy_load'
wp option delete 'reality_shop_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reality_shop_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reality_shop_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reality_shop_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reality_shop_shortcode'"
