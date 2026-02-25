#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpc_select_product_name_color'
wp option delete 'wpc_select_product_description_color'
wp option delete 'wpc_select_product_short_description_color'
wp option delete 'wpc_select_product_category_color'
wp option delete 'wpc_select_product_category_bg_color'
wp option delete 'wpc_select_product_tag_color'
wp option delete 'wpc_select_product_tag_bg_color'
wp option delete 'wpc_select_product_review_color'
wp option delete 'wpc_select_product_price_color'
wp option delete 'wpc_select_product_add_to_cart_color'
wp option delete 'wpc_select_product_add_to_cart_bg_color'
wp option delete 'wpc_select_product_sale_color'
wp option delete 'wpc_select_product_sale_bg_color'

