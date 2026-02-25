#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ibantest_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direct_debit_iban'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direct_debit_iban'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direct_debit_iban'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direct_debit_iban'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direct_debit_bic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direct_debit_bic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direct_debit_bic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direct_debit_bic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direct_debit_holder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direct_debit_holder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direct_debit_holder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direct_debit_holder'"
