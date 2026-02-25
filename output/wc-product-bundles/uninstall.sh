#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_manage_stock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpb_bundle_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpb_bundle_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpb_bundle_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpb_bundle_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpb_product_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpb_product_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpb_product_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpb_product_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpb_show_bundle_on_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpb_show_bundle_on_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpb_show_bundle_on_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpb_show_bundle_on_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpb_show_bundle_on_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpb_show_bundle_on_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpb_show_bundle_on_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpb_show_bundle_on_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpb_show_bundle_on_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpb_show_bundle_on_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpb_show_bundle_on_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpb_show_bundle_on_order'"
