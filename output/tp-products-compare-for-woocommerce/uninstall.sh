#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpwc_fields_to_show'
wp option delete 'tpwc_window_pop_up_background'
wp option delete 'tpwc_display_share_buttons'
wp option delete 'tpwc_remove_product_type'
wp option delete 'tpwc_add_to_cart_background'
wp option delete 'tpwc_add_to_cart_color'
wp option delete 'tpwc_add_to_cart_padding'
wp option delete 'tpwc_add_to_cart_border_radius'
wp option delete 'tpwc_strart_color'
wp option delete 'tpwc_limit_products_to_compare'
wp option delete 'tpwc_open_compare_button_type'
wp option delete 'tpwc_share_fields_to_show'
wp option delete 'tpwc_display_titles'
wp option delete 'tpwc_open_compare_button_color'
wp option delete 'tpwc_open_compare_button_background'
wp option delete 'tpwc_open_compare_button_padding'
wp option delete 'tpwc_product_compare_button_color'
wp option delete 'tpwc_product_compare_button_background'
wp option delete 'tpwc_product_compare_button_padding'
wp option delete 'tp_woocommerce_compare_page_id'
wp option delete 'tpwc_view_box_background'
wp option delete 'tpwc_highlight_cheapest_price'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
