#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_hold_stock_minutes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woocommerce_cpgw_card_settings'
wp option delete 'woocommerce_cpgw_ach_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pay_response_received'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pay_response_received'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pay_response_received'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pay_response_received'"
