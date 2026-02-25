#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trelismpw_enabled'
wp option delete 'trelismpw_product_price'
wp option delete 'lifetime_access_price'
wp option delete 'stripe_enabled'
wp option delete 'stripe_api_key'
wp option delete 'stripe_api_secret'
wp option delete 'stripe_webhook_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trelismpw_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trelismpw_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trelismpw_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trelismpw_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trelismpw_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trelismpw_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trelismpw_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trelismpw_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trelismpw_product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trelismpw_product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trelismpw_product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trelismpw_product_price'"
