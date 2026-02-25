#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_thanks_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'netpay_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'netpay_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'netpay_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'netpay_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'netpay_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'netpay_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'netpay_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'netpay_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'netpay_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'netpay_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'netpay_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'netpay_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_status'"
