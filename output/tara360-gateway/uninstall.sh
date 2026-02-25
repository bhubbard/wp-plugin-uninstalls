#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tara360_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tara360_return_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tara360_return_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tara360_return_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tara360_return_nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tara360_track_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tara360_track_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tara360_track_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tara360_track_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tara360_transaction_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tara360_transaction_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tara360_transaction_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tara360_transaction_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tara360_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tara360_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tara360_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tara360_transaction_id'"
