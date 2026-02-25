#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kadio_deposit_settings_select_deposit_for_product_or_total'
wp option delete 'kadio_deposit_settings_number_deposit_on_minimum_cart_amount'
wp option delete 'kadio_deposit_apply_on_shipping'
wp option delete 'kadio_deposit_settings_amount'
wp option delete 'kadio_deposit_when_using_coupon_id'
wp option delete 'kadio_deposit_settings_payment_title'
wp option delete 'kadio_deposit_settings_payment_cash_title'
wp option delete 'kadio_deposit_settings_payment_deposit_title'
wp option delete 'kadio_deposit_settings_checkbox_deposit_on_minimum_cart'
wp option delete 'kadio_deposit_settings_show_details'
wp option delete 'kadio_deposit_settings_show_email'
wp option delete 'kadio_deposit_settings_sold_message'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_enable_shipping_calc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kadio_deposit_apply_on_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kadio_deposit_apply_on_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kadio_deposit_apply_on_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kadio_deposit_apply_on_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kadio_deposit_for_product_or_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kadio_deposit_for_product_or_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kadio_deposit_for_product_or_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kadio_deposit_for_product_or_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kadio_deposit_deposit_on_minimum_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kadio_deposit_deposit_on_minimum_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kadio_deposit_deposit_on_minimum_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kadio_deposit_deposit_on_minimum_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kadio_deposit_deposit_on_minimum_cart_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kadio_deposit_deposit_on_minimum_cart_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kadio_deposit_deposit_on_minimum_cart_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kadio_deposit_deposit_on_minimum_cart_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kadio_deposit_add_product_custom_fields_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kadio_deposit_add_product_custom_fields_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kadio_deposit_add_product_custom_fields_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kadio_deposit_add_product_custom_fields_deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kadio_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kadio_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kadio_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kadio_deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kadio_deposit_from_partial_payment_to_process_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kadio_deposit_from_partial_payment_to_process_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kadio_deposit_from_partial_payment_to_process_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kadio_deposit_from_partial_payment_to_process_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kadio_deposit_new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kadio_deposit_new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kadio_deposit_new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kadio_deposit_new'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kdc_without_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kdc_without_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kdc_without_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kdc_without_deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kdc_is_paid_by_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kdc_is_paid_by_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kdc_is_paid_by_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kdc_is_paid_by_deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kadio_deposit_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kadio_deposit_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kadio_deposit_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kadio_deposit_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'check_deposit_on_minimum_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'check_deposit_on_minimum_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'check_deposit_on_minimum_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'check_deposit_on_minimum_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kadio_deposit_paid_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kadio_deposit_paid_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kadio_deposit_paid_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kadio_deposit_paid_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_payplug_partial_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_payplug_partial_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_payplug_partial_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_payplug_partial_payment'"
