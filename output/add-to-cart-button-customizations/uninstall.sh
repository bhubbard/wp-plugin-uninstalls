#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wooaddtocart_settings_button_bg_color'
wp option delete '_wooaddtocart_settings_button_text_color'
wp option delete '_wooaddtocart_settings_button_border_color'
wp option delete '_wooaddtocart_settings_button_hover_color'
wp option delete '_wooaddtocart_settings_button_border_size'
wp option delete '_wooaddtocart_settings_button_radius_size'
wp option delete '_wooaddtocart_settings_button_font_size'
wp option delete '_wooaddtocart_settings_button_type'
wp option delete 'wooaddtocart_settings_button_padding_top'
wp option delete 'wooaddtocart_settings_button_padding_bottom'
wp option delete 'wooaddtocart_settings_button_padding_right'
wp option delete 'wooaddtocart_settings_button_padding_left'
wp option delete '_wooaddtocart_settings_button_icon'
wp option delete '_wooaddtocart_settings_button_icon_position'
wp option delete '_wooaddtocart_settings_button_hide'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooaddtocart_product_hide_cart_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooaddtocart_product_hide_cart_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooaddtocart_product_hide_cart_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooaddtocart_product_hide_cart_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooaddtocart_product_cart_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooaddtocart_product_cart_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooaddtocart_product_cart_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooaddtocart_product_cart_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooaddtocart_product_hide_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooaddtocart_product_hide_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooaddtocart_product_hide_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooaddtocart_product_hide_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atcbc-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atcbc-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atcbc-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atcbc-notice-dismissed'"
