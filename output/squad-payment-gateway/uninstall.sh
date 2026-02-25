#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_squad_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_squad_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_squad_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_squad_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_squad_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_squad_txn_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_squad_txn_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_squad_txn_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_squad_txn_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
