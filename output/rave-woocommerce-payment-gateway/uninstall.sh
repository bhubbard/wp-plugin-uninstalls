#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_rave_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'autocomplete_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flw_payment_txn_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flw_payment_txn_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flw_payment_txn_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flw_payment_txn_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rave_wc_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rave_wc_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rave_wc_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rave_wc_token'"
