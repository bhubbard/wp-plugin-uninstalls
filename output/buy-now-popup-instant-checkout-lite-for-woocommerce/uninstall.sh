#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'wcbnpc_checkout_fields'
wp option delete 'wcbnpc_enabled_shipping_methods'
wp option delete 'wcbnpc_settings'
wp option delete 'woocommerce_currency_pos'
wp option delete 'wcbnpc_enabled_payment_gateways'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcbnpc_disable_buy_now_shop_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcbnpc_disable_buy_now_shop_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcbnpc_disable_buy_now_shop_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcbnpc_disable_buy_now_shop_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcbnpc_disable_buy_now'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcbnpc_disable_buy_now'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcbnpc_disable_buy_now'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcbnpc_disable_buy_now'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbnpc_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbnpc_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbnpc_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbnpc_dismissed_notices'"
