#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apww_notice_dismiss'
wp option delete 'apww_license'
wp option delete 'apww_license_active'
wp option delete 'apsw_license_active'
wp option delete 'apsw_license_notices_web'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'appw_wishlist_achive_product_list_%'"
wp option delete 'woocommerce_myaccount_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '__apww_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'appw_wishlist_achive_product_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'appw_wishlist_achive_product_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'appw_wishlist_achive_product_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'appw_wishlist_achive_product_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'appw_meta_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'appw_meta_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'appw_meta_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'appw_meta_wishlist'"
