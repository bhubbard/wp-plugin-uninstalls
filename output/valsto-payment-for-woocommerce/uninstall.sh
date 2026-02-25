#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_valsto_merchant_access_token'
wp option delete 'wc_valsto_merchant_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_valsto_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_valsto_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_valsto_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_valsto_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
