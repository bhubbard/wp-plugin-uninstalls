#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_xh-mustang-pay-wc_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_merchant_order_pay_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_merchant_order_pay_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_merchant_order_pay_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_merchant_order_pay_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_merchant_order_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_merchant_order_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_merchant_order_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_merchant_order_no'"
