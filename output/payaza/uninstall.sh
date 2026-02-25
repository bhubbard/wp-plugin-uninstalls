#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payaza_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payaza_txn_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payaza_txn_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payaza_txn_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payaza_txn_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_payaza_save_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_payaza_save_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_payaza_save_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_payaza_save_card'"
