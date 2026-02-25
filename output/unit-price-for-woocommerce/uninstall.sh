#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_upw_product_quantity_step'
wp option delete 'wc_upw_product_measurement'
wp option delete 'wc_upw_product_price_suffix'
wp option delete 'wc_upw_quantity_auto_update'
wp option delete 'wc_upw_variable_quantity_auto_update'
wp option delete 'wc_upw_archive_variations'
wp option delete 'wc_upw_quantity_variation'
wp option delete 'wc_upw_product_quantity_suffix'
wp option delete 'wc_upw_quantity_simple'
wp option delete 'wc_upw_product_price_adjust'
wp option delete 'wc_upw_product_price_quantity'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_currency_pos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upw_measurement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upw_measurement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upw_measurement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upw_measurement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upw_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upw_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upw_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upw_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upw_quantity_suffix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upw_quantity_suffix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upw_quantity_suffix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upw_quantity_suffix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upw_price_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upw_price_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upw_price_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upw_price_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upw_price_suffix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upw_price_suffix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upw_price_suffix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upw_price_suffix'"
