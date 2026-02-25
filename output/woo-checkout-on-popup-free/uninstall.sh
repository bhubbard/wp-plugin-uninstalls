#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'wps_wcp_global_icon_bck_color'
wp option delete 'wps_wcp_global_icon_hover_bck_color'
wp option delete 'wps_wcp_popup_footer_button'
wp option delete 'wps_wcp_popup_bck_color'
wp option delete 'wps_wcp_popup_css'
wp option delete 'wps_wcp_popup_header_text'
wp option delete 'wps_wcp_popup_footer_text'
wp option delete 'wps_wcp_global_icon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_premium_buy_notice_checkoutpopup2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_premium_buy_notice_checkoutpopup2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_premium_buy_notice_checkoutpopup2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_premium_buy_notice_checkoutpopup2'"
