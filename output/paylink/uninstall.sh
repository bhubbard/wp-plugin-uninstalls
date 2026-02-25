#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paylink_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paylink_transaction_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paylink_transaction_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paylink_transaction_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paylink_transaction_no'"
