#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcbcf_settings'
wp option delete 'woocommerce_pagseguro_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_sandbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_sandbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_sandbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_sandbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pagseguro_payment_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pagseguro_payment_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pagseguro_payment_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pagseguro_payment_data'"
