#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooposgc_wg_options'
wp option delete 'wooposgc_giftcard_reload_card'
wp option delete 'wooposgc_enable_giftcard_charge_shipping'
wp option delete 'wooposgc_enable_giftcard_charge_tax'
wp option delete 'wooposgc_enable_giftcard_charge_fee'
wp option delete 'wooposgc_enable_giftcard_charge_giftcard'
wp option delete 'wooposgc_giftcard_exclude_product_ids'
wp option delete 'wooposgc_gift_version'
wp option delete 'wooposgc_auto_when'
wp option delete 'woocommerce_giftcard_send_later'
wp option delete 'wooposgc_giftcard_to'
wp option delete 'wooposgc_giftcard_toEmail'
wp option delete 'wooposgc_giftcard_note'
wp option delete 'wooposgc_giftcard_address'
wp option delete 'wooposgc_enable_send_later'
wp option delete 'wooposgc_auto_defaultExpiry'
wp option delete 'wooposgc_check_send'
wp option delete 'wooposgc_cn_preNum'
wp option delete 'wooposgc_cn_postNum'
wp option delete 'wooposgc_cn_numLength'
wp option delete 'wooposgc_enable_price_customization'
wp option delete 'wooposgc_license_key'
wp option delete 'wooposgc_custom_price_license_status'
wp option delete 'wooposgc_options'
wp option delete 'woocommerce_currency_pos'
wp option delete 'wooposgc_enable_addtocart'
wp option delete 'wooposgc_giftcard_button'
wp option delete 'wooposgc_auto_min'
wp option delete 'wooposgc_auto_max'
wp option delete 'wooposgc_woocommerce_disable_coupons'
wp option delete 'wooposgc_enable_giftcard_cartpage'
wp option delete 'wooposgc_enable_giftcard_checkoutpage'
wp option delete 'woocommerce_giftcard_reload'
wp option delete 'woocommerce_disable_coupons'
wp option delete 'wooposgc_enable_one_time_use'
wp option delete 'wooposgc_enable_giftcard_process'
wp option delete 'wooposgc_enable_giftcard_custom_message'
wp option delete 'wooposgc_enable_giftcard_redemption_info'
wp option delete 'wc_prices_include_tax'
wp option delete 'wooposgc_enable_multiples'
wp option delete 'wooposgc_enable_physical'
wp option delete 'wooposgc_enable_giftcard_info_requirements'
wp option delete 'wooposgc_woocommerce_disable_notes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooposgc_giftcard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooposgc_giftcard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooposgc_giftcard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooposgc_giftcard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_existingOrders_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_existingOrders_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_existingOrders_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_existingOrders_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooposgc_card_reloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooposgc_card_reloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooposgc_card_reloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooposgc_card_reloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_default_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_default_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_default_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_default_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_payment_raw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_payment_raw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_payment_raw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_payment_raw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_balance_raw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_balance_raw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_balance_raw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_balance_raw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooposgc_isgiftcard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooposgc_isgiftcard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooposgc_isgiftcard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooposgc_isgiftcard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_giftcard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_giftcard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_giftcard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_giftcard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_numbers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_numbers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_numbers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_numbers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooposgc_physical_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooposgc_physical_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooposgc_physical_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooposgc_physical_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooposgc_allow_reload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooposgc_allow_reload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooposgc_allow_reload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooposgc_allow_reload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooposgc_isc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooposgc_isc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooposgc_isc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooposgc_isc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_balance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooposgc_cp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooposgc_cp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooposgc_cp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooposgc_cp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_cardnumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_cardnumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_cardnumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_cardnumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooposgc_refunded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooposgc_refunded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooposgc_refunded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooposgc_refunded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
