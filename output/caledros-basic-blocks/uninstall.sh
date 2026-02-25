#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caledros_basic_blocks_enable_preload'
wp option delete 'caledros_basic_blocks_add_column_layout_to_wp_site_blocks'
wp option delete 'caledros_basic_blocks_set_custom_height_to_wp_site_blocks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alt_text_category_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alt_text_category_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alt_text_category_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alt_text_category_image'"
