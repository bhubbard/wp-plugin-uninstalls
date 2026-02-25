#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gallery_layout'
wp option delete 'gallery_title'
wp option delete 'gallery_content'
wp option delete 'gallery_post_count'
wp option delete 'gallery_order_by'
wp option delete 'gallery_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Layout'"
