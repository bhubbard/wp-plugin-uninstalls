#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dwwsunarc_active_first'
wp option delete 'dwwsunarc_settings_sunarc'
wp option delete 'dwwsunarc_wallet_id'
wp option delete 'woocommerce_dwwsunarc_wallet_payment_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dwwsunarc_wallet_balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dwwsunarc_wallet_balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dwwsunarc_wallet_balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dwwsunarc_wallet_balance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
