#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ollits_wishlist_page_id'
wp option delete 'ollitsaw_button_position_shop'
wp option delete 'ollitsaw_button_priority_shop'
wp option delete 'ollitsaw_button_position_product'
wp option delete 'ollitsaw_button_priority_product'
wp option delete 'ollitsaw_button_add_to_wishlist_text'
wp option delete 'ollitsaw_button_remove_from_wishlist_text'
wp option delete 'ollitsaw_page_style'
wp option delete 'ollitsaw_email_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ol_its_advanced_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ol_its_advanced_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ol_its_advanced_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ol_its_advanced_wishlist'"
