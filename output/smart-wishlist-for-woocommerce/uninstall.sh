#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tesw_general_settings_fields'
wp option delete 'tesw_add_to_wishlist_options_fields'
wp option delete 'tesw_wishlist_page_options_fields'
wp option delete 'tesw_social_networks_settings_fields'
wp option delete 'tesw_style_options'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'tesw_pro_version_settings_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tesw_smart_wishlist_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tesw_smart_wishlist_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tesw_smart_wishlist_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tesw_smart_wishlist_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tesw_wishlist_date_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tesw_wishlist_date_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tesw_wishlist_date_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tesw_wishlist_date_added'"
