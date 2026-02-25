#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woocommerce_khalti_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_khalti_pidx'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_khalti_pidx'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_khalti_pidx'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_khalti_pidx'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_khalti_txn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_khalti_txn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_khalti_txn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_khalti_txn_id'"
