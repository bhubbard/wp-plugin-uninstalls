#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wp_pargo_settings'
wp option delete 'toptal_save_saved_page_id'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'pargo_dismissed_rating_notice_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_token'"
wp option delete 'pargo_style_button'
wp option delete 'pargo_style_title'
wp option delete 'pargo_style_desc'
wp option delete 'pargo_style_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pargo_waybill'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pargo_waybill'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pargo_waybill'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pargo_waybill'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pargo_order_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pargo_order_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pargo_order_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pargo_order_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pargo_waybills'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pargo_waybills'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pargo_waybills'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pargo_waybills'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_suburb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_suburb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_suburb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_suburb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_suburb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_suburb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_suburb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_suburb'"
