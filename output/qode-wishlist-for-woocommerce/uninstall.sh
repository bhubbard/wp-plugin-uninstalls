#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qode_wishlist_for_woocommerce_framework_permalinks'
wp option delete 'qode_wishlist_for_woocommerce_framework_permalinks_updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_count'"

# Clear Cron Jobs
wp cron event delete 'qode_wishlist_for_woocommerce_trigger_guests_wishlist_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qode_wishlist_for_woocommerce_user_wishlist_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qode_wishlist_for_woocommerce_user_wishlist_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qode_wishlist_for_woocommerce_user_wishlist_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qode_wishlist_for_woocommerce_user_wishlist_items'"
