#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qqworld-checkout-payments'
wp option delete 'woocommerce_currency'
wp option delete 'icl_enable_multi_currency'
wp option delete 'woocommerce_calc_shipping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Wepay Out Trade No.'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Wepay Out Trade No.'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Wepay Out Trade No.'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Wepay Out Trade No.'"
