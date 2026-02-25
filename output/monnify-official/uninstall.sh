#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_monnify_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_monnify_save_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_monnify_save_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_monnify_save_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_monnify_save_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monnify_txn_refs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monnify_txn_refs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monnify_txn_refs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monnify_txn_refs'"
