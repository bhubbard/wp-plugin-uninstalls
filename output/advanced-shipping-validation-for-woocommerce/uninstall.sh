#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_woocommerce_advanced_shipping_validation'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'woocommerce_myaccount_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_was_shipping_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_was_shipping_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_was_shipping_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_was_shipping_method'"
