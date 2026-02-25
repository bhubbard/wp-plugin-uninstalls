#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usp_upsell_products_visibility_ids'
wp option delete 'usp_upsell_products_forced_qty_ids'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'usp_cart_modalbox_enabled'
wp option delete 'usp_cart_modalbox_heading'
wp option delete 'usp_cart_modalbox_delay'
wp option delete 'usp_cart_upsell_product_id'
wp option delete 'usp_cart_upsell_min_amount'
wp option delete 'usp_cart_upsell_max_amount'
wp option delete 'usp_cart_upsell_product_visibility'
wp option delete 'usp_cart_upsell_product_forced_qty'
wp option delete 'usp_checkout_modalbox_enabled'
wp option delete 'usp_checlout_modalbox_heading'
wp option delete 'usp_checkout_modalbox_delay'
wp option delete 'usp_checkout_upsell_product_id'
wp option delete 'usp_checkout_upsell_postcode'
wp option delete 'usp_checkout_upsell_product_visibility'
wp option delete 'usp_checkout_upsell_product_forced_qty'
wp option delete 'usp_upsell_product_rating_enabled'
wp option delete 'usp_upsell_product_brands_enabled'
wp option delete 'usp_upsell_product_sku_enabled'
wp option delete 'usp_upsell_product_availability_enabled'
wp option delete 'usp_modalbox_header_bg_color'
wp option delete 'usp_modalbox_header_text_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usp_modalbox_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usp_modalbox_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usp_modalbox_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usp_modalbox_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usp_modalbox_delay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usp_modalbox_delay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usp_modalbox_delay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usp_modalbox_delay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usp_upsell_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usp_upsell_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usp_upsell_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usp_upsell_product_id'"
