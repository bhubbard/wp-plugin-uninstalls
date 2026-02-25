#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payubiz_settings'
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_enable_guest_checkout_old'

# Clear Cron Jobs
wp cron event delete 'pass_arguments_to_save_address'
wp cron event delete 'pass_arguments_to_verify'
wp cron event delete 'payu_check_refund_status_check_next_scheduled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payu_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payu_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payu_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payu_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_persistent_cart_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_persistent_cart_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_persistent_cart_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_persistent_cart_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_txnid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_txnid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_txnid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_txnid'"
