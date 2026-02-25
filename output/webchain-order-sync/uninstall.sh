#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webchain_user_email'
wp option delete 'webchain_wallet'
wp option delete 'webchain_connection_status'
wp option delete 'webchain_sync_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webchain_tx_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webchain_tx_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webchain_tx_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webchain_tx_hash'"
