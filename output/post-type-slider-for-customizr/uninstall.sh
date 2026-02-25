#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'risbl_slider_customizr_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'risbl_prefix_title_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'risbl_prefix_title_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'risbl_prefix_title_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'risbl_prefix_title_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'risbl_slide_order_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'risbl_slide_order_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'risbl_slide_order_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'risbl_slide_order_index'"
