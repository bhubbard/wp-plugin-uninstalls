#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpv_skw_settings'
wp option delete 'skw_active_modules'
wp option delete 'woocommerce_manage_stock'
wp option delete 'skw_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_cart_text_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_cart_text_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_cart_text_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_cart_text_single'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_cart_text_archive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_cart_text_archive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_cart_text_archive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_cart_text_archive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_stock_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_stock_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_stock_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_stock_reference'"
