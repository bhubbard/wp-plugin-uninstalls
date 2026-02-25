#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pravel_pickup_enable_field'
wp option delete 'woocommerce_notify_email'
wp option delete 'pravel_unsubscribe_page'
wp option delete 'pravel_notify_email_rent_subject'
wp option delete 'pravel_notify_email_rent_message'
wp option delete 'pravel_notify_email_rent_recepient'
wp option delete 'pravel_notify_email_buy_subject'
wp option delete 'pravel_notify_email_buy_message'
wp option delete 'pravel_notify_email_buy_recepient'
wp option delete 'pravel_notify_email'
wp option delete 'pravel_alternative_store_field'
wp option delete 'pravel_store_name'
wp option delete 'pravel_store_address_1'
wp option delete 'pravel_store_address_2'
wp option delete 'pravel_store_city'
wp option delete 'pravel_store_zip'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_rent_product_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_rent_product_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_rent_product_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_rent_product_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_order_booking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_order_booking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_order_booking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_order_booking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_admin_booking_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_admin_booking_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_admin_booking_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_admin_booking_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_product_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_product_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_product_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_product_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_booking_reg_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_booking_reg_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_booking_reg_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_booking_reg_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_booking_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_booking_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_booking_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_booking_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_booking_extra_price_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_booking_extra_price_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_booking_extra_price_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_booking_extra_price_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_extra_price_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_extra_price_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_extra_price_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_extra_price_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_extra_price_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_extra_price_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_extra_price_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_extra_price_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_custom_price_dates_eve_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_custom_price_dates_eve_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_custom_price_dates_eve_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_custom_price_dates_eve_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_extra_price_same_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_extra_price_same_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_extra_price_same_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_extra_price_same_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_manage_add_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_manage_add_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_manage_add_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_manage_add_block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_blocks_ser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_blocks_ser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_blocks_ser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_blocks_ser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_disable_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_disable_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_disable_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_disable_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_min_booking_req'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_min_booking_req'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_min_booking_req'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_min_booking_req'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pravel_stock_rent_notify_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pravel_stock_rent_notify_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pravel_stock_rent_notify_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pravel_stock_rent_notify_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pravel_stock_notify_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pravel_stock_notify_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pravel_stock_notify_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pravel_stock_notify_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Pickup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Pickup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Pickup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Pickup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pravel_manage_rent_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pravel_manage_rent_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pravel_manage_rent_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pravel_manage_rent_stock'"
