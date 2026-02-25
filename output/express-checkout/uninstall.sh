#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_express_checkout_settings'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'ppcp_sandbox_webhook_id'
wp option delete 'ppcp_live_webhook_id'
wp option delete 'woocommerce_ppcp_paypal_checkout_settings'

# Delete Transients
wp transient delete 'pec-upgrade-notice-dismissed'
wp transient delete 'ppcp_sandbox_client_token'
wp transient delete 'ppcp_live_client_token'
wp transient delete 'ppcp_client_token'
wp transient delete 'ppcp_is_webhook_process_started'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_express_chekout_transactionid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_express_chekout_transactionid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_express_chekout_transactionid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_express_chekout_transactionid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PayPal Transaction Fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PayPal Transaction Fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PayPal Transaction Fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PayPal Transaction Fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_status'"
