#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'icl_enable_multi_currency'
wp option delete 'woocommerce_wechatpay_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WeChatPay Trade No.'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WeChatPay Trade No.'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WeChatPay Trade No.'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WeChatPay Trade No.'"
