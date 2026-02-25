#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_force_ssl_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cust_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cust_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cust_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cust_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_securionpay_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_securionpay_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_securionpay_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_securionpay_transaction'"
