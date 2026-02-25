#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fields'"
wp option delete 'bh_wppm_limit'
wp option delete 'woocommerce_cart_redirect_after_add'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_fields' OR option_name LIKE '_site_transient_%_fields'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_price_matrix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_price_matrix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_price_matrix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_price_matrix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pm_variation_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pm_variation_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pm_variation_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pm_variation_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribute_price_matrix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribute_price_matrix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribute_price_matrix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribute_price_matrix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pm_order_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pm_order_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pm_order_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pm_order_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
