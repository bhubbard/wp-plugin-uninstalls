#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shop_slug'
wp option delete 'woocommerce_prepend_shop_page_to_urls'
wp option delete 'gencwooc_products_per_page'
wp option delete 'woocommerce_shop_page_title'
wp option delete 'woocommerce_hide_out_of_stock_items'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsm_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsm_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsm_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsm_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ss_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ss_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ss_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ss_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ss_sidebar_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ss_sidebar_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ss_sidebar_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ss_sidebar_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_layout'"
