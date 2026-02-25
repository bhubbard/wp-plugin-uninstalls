#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbnb_enable_product_types'
wp option delete 'wbnb_enable_button_single'
wp option delete 'wbnb_enable_button_archive'
wp option delete 'wbnb_redirect_location'
wp option delete 'wbnb_ajax_add_to_cart'
wp option delete 'wbnb_button_style'
wp option delete 'wbnb_button_color'
wp option delete 'wbnb_button_background'
wp option delete 'wbnb_button_border_color'
wp option delete 'wbnb_button_border_size'
wp option delete 'wbnb_button_border_radius'
wp option delete 'wbnb_button_font_size'
wp option delete 'wbnb_button_margin'
wp option delete 'wbnb_button_padding'
wp option delete 'wbnb_reset_cart'
wp option delete 'wbnb_button_position_single'
wp option delete 'wbnb_button_position_archive'
wp option delete 'wbnb_custom_redirect_url'
wp option delete 'wbnb_button_text'
wp option delete 'wbnb_default_qnt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_buy_now_button_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_buy_now_button_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_buy_now_button_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_buy_now_button_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_add_to_cart_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_add_to_cart_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_add_to_cart_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_add_to_cart_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_quantity_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_quantity_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_quantity_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_quantity_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_qnt_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_qnt_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_qnt_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_qnt_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buy_now_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buy_now_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buy_now_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buy_now_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buy_now_redirect_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buy_now_redirect_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buy_now_redirect_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buy_now_redirect_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buy_now_redirect_custom_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buy_now_redirect_custom_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buy_now_redirect_custom_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buy_now_redirect_custom_link'"
