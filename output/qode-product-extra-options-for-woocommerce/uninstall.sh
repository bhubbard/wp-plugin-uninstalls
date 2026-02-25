#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_display_suffix'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'qode_product_extra_options_for_woocommerce_framework_permalinks'
wp option delete 'qode_product_extra_options_for_woocommerce_framework_permalinks_updated'
wp option delete 'qode_wpv_vendors_option_advanced_product_options_management'
wp option delete 'qpeofw_sold_individually_product_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
